.class public Lcom/anythink/core/c/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/c/h$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "h"


# instance fields
.field b:Lcom/anythink/core/common/h/a;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/anythink/core/c/h$a;

.field e:Ljava/lang/String;

.field f:J

.field g:Z

.field h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/anythink/core/common/h/a;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/core/c/h;->e:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    .line 7
    .line 8
    iget-object p1, p2, Lcom/anythink/core/common/h/a;->q:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/anythink/core/c/h;->c:Ljava/util/Map;

    .line 11
    .line 12
    iput-wide p3, p0, Lcom/anythink/core/c/h;->f:J

    .line 13
    .line 14
    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/anythink/core/c/h;->g:Z

    return-void
.end method

.method private a(Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Lcom/anythink/core/common/h/by;)V
    .locals 4

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v0, v0, Lcom/anythink/core/common/h/a;->c:Lcom/anythink/core/common/h/as;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/anythink/core/common/h/as;->b()Lcom/anythink/core/api/ATAdRequest;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v1, v1, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v3, v2, Lcom/anythink/core/common/h/a;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/anythink/core/common/h/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, p2, v0}, Lcom/anythink/core/e/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/api/ATAdRequest;)Ljava/util/Map;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v1, v1, Lcom/anythink/core/common/h/a;->s:Lcom/anythink/core/common/h/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/n;->ah()Lcom/anythink/core/common/h/n;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-static {v1, p2, v2, v2}, Lcom/anythink/core/common/v/ah;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;IZ)V

    .line 9
    invoke-static {v0, v1}, Lcom/anythink/core/common/v/o;->a(Ljava/util/Map;Lcom/anythink/core/common/h/n;)V

    .line 10
    invoke-virtual {p2}, Lcom/anythink/core/common/h/by;->n()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    .line 11
    invoke-virtual {p2, p1}, Lcom/anythink/core/common/h/by;->a(Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v1, v1, Lcom/anythink/core/common/h/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/c/h;->c:Ljava/util/Map;

    new-instance v3, Lcom/anythink/core/c/h$2;

    invoke-direct {v3, p0, p2}, Lcom/anythink/core/c/h$2;-><init>(Lcom/anythink/core/c/h;Lcom/anythink/core/common/h/by;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->internalGetBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V

    .line 13
    iget-object v0, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0, p2, p1}, Lcom/anythink/core/c/h$a;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 15
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    iget-object v0, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    if-eqz v0, :cond_2

    .line 17
    new-instance v1, Lcom/anythink/core/c/c/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/anythink/core/c/c/a;-><init>(Lcom/anythink/core/common/h/by;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/anythink/core/c/h$a;->b(Lcom/anythink/core/c/c/a;)V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/c/h;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;Lcom/anythink/core/common/h/by;)V
    .locals 4

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v0, v0, Lcom/anythink/core/common/h/a;->c:Lcom/anythink/core/common/h/as;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/anythink/core/common/h/as;->b()Lcom/anythink/core/api/ATAdRequest;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v1, v1, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v3, v2, Lcom/anythink/core/common/h/a;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/anythink/core/common/h/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, p2, v0}, Lcom/anythink/core/e/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/api/ATAdRequest;)Ljava/util/Map;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v1, v1, Lcom/anythink/core/common/h/a;->s:Lcom/anythink/core/common/h/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/n;->ah()Lcom/anythink/core/common/h/n;

    move-result-object v1

    const/4 v2, 0x0

    .line 88
    invoke-static {v1, p2, v2, v2}, Lcom/anythink/core/common/v/ah;->a(Lcom/anythink/core/common/h/n;Lcom/anythink/core/common/h/by;IZ)V

    .line 89
    invoke-static {v0, v1}, Lcom/anythink/core/common/v/o;->a(Ljava/util/Map;Lcom/anythink/core/common/h/n;)V

    .line 90
    invoke-virtual {p2}, Lcom/anythink/core/common/h/by;->n()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    .line 91
    invoke-virtual {p2, p1}, Lcom/anythink/core/common/h/by;->a(Lcom/anythink/core/api/bridge/AnyThinkBaseAdapter;)V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v1, v1, Lcom/anythink/core/common/h/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/c/h;->c:Ljava/util/Map;

    new-instance v3, Lcom/anythink/core/c/h$2;

    invoke-direct {v3, p0, p2}, Lcom/anythink/core/c/h$2;-><init>(Lcom/anythink/core/c/h;Lcom/anythink/core/common/h/by;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->internalGetBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V

    .line 93
    iget-object v0, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    if-eqz v0, :cond_2

    .line 94
    invoke-interface {v0, p2, p1}, Lcom/anythink/core/c/h$a;->a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/api/bridge/ATBaseAdAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 95
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    iget-object p0, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    if-eqz p0, :cond_2

    .line 97
    new-instance v0, Lcom/anythink/core/c/c/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/anythink/core/c/c/a;-><init>(Lcom/anythink/core/common/h/by;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/anythink/core/c/h$a;->b(Lcom/anythink/core/c/c/a;)V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/c/h;Lcom/anythink/core/common/h/by;Lcom/anythink/core/api/ATBidRequestInfo;)V
    .locals 10

    if-eqz p2, :cond_f

    .line 98
    :try_start_0
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBidRequestInfo;->toRequestJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_8

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget v0, v0, Lcom/anythink/core/common/h/a;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v1, v1, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    iget-object v1, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    invoke-static {p2, v0, p1, v1}, Lcom/anythink/core/c/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/a;)V

    .line 100
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->y()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_c

    .line 101
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->l()Lorg/json/JSONArray;

    move-result-object v0

    .line 102
    const-string v1, "ecpoffer"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 103
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget v0, v0, Lcom/anythink/core/common/h/a;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 105
    const-string v0, "get_offer"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    goto/16 :goto_9

    .line 106
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v0, v0, Lcom/anythink/core/common/h/a;->s:Lcom/anythink/core/common/h/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->al()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 107
    iget-object v0, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v0, v0, Lcom/anythink/core/common/h/a;->A:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    if-eqz v0, :cond_a

    .line 108
    invoke-virtual {v0}, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->getBidFloor()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_a

    .line 109
    invoke-virtual {v0}, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->getCurrency()Lcom/anythink/core/api/ATAdConst$CURRENCY;

    move-result-object v5

    if-nez v5, :cond_2

    .line 110
    sget-object v5, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 111
    :cond_2
    iget-object v6, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v6, v6, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v6}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/e/m;->M()D

    move-result-wide v6

    .line 112
    sget-object v8, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    if-ne v5, v8, :cond_3

    :goto_2
    mul-double/2addr v3, v6

    goto :goto_3

    .line 113
    :cond_3
    sget-object v8, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    if-ne v5, v8, :cond_4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v8

    goto :goto_2

    .line 114
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->getExtraMap()Ljava/util/Map;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    .line 115
    const-string v6, "extra_type"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 116
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_6

    .line 117
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v5

    :goto_4
    move v5, v1

    :cond_6
    if-eqz v5, :cond_9

    .line 118
    :try_start_3
    const-string v1, "g_bidfloor"

    invoke-virtual {p2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 119
    const-string v1, "extra_m_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 120
    const-string v6, "extra_tp_m_info"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 121
    const-string v7, "extra_l_s_p"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    instance-of v7, v1, Lorg/json/JSONObject;

    if-eqz v7, :cond_7

    .line 123
    check-cast v1, Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 125
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 126
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 127
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 128
    :cond_7
    instance-of v1, v6, Lorg/json/JSONArray;

    if-eqz v1, :cond_8

    .line 129
    check-cast v6, Lorg/json/JSONArray;

    .line 130
    const-string v1, "wf_g"

    invoke-virtual {p2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_8
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_9

    .line 132
    const-string v1, "last_stop_price"

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p2, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    .line 133
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_7
    if-nez v5, :cond_a

    .line 134
    const-string v0, "c_bidfloor"

    invoke-virtual {p2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    :cond_a
    :try_start_5
    const-string v0, "bit_token_al_it"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 136
    instance-of v1, v0, [Lorg/json/JSONArray;

    if-eqz v1, :cond_b

    .line 137
    invoke-static {}, Lcom/anythink/core/common/c/b;->a()Lcom/anythink/core/common/c/b;

    move-result-object v1

    check-cast v0, [Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/c/b;->a([Lorg/json/JSONArray;)V

    .line 138
    :cond_b
    const-string v0, "bit_token_mk_it"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 139
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 140
    invoke-static {}, Lcom/anythink/core/common/c/b;->a()Lcom/anythink/core/common/c/b;

    move-result-object v1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/c/b;->a(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 141
    :catchall_3
    :cond_c
    :try_start_6
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->n()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v0, v2, :cond_d

    .line 142
    :try_start_7
    const-string v0, "admob_bid_type"

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->aU()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    const-string v0, "network_id"

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->aT()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 144
    :catchall_4
    :cond_d
    :try_start_8
    new-instance v2, Lcom/anythink/core/c/c/a;

    invoke-direct {v2, p1, p2}, Lcom/anythink/core/c/c/a;-><init>(Lcom/anythink/core/common/h/by;Lorg/json/JSONObject;)V

    .line 145
    iget-wide v3, p0, Lcom/anythink/core/c/h;->f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/core/c/c/a;->a(JJJ)V

    .line 146
    iget-boolean p2, p0, Lcom/anythink/core/c/h;->g:Z

    invoke-virtual {v2, p2}, Lcom/anythink/core/c/c/a;->a(Z)V

    .line 147
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->bJ()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 148
    iget-boolean p2, p0, Lcom/anythink/core/c/h;->h:Z

    if-eqz p2, :cond_e

    .line 149
    iget-object p2, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    if-eqz p2, :cond_e

    .line 150
    iget-object p2, p2, Lcom/anythink/core/common/h/a;->J:Lcom/anythink/core/common/f;

    if-eqz p2, :cond_e

    .line 151
    invoke-virtual {p2}, Lcom/anythink/core/common/f;->f()Lcom/anythink/core/c/f;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 152
    invoke-virtual {p2}, Lcom/anythink/core/common/f;->f()Lcom/anythink/core/c/f;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/core/c/h;->e:Ljava/lang/String;

    .line 153
    iget-object p2, p2, Lcom/anythink/core/c/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_e
    iget-object p2, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    if-eqz p2, :cond_10

    .line 155
    invoke-interface {p2, v2}, Lcom/anythink/core/c/h$a;->a(Lcom/anythink/core/c/c/a;)V

    goto :goto_a

    .line 156
    :cond_f
    :goto_8
    iget-object p2, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    if-eqz p2, :cond_10

    .line 157
    new-instance v0, Lcom/anythink/core/c/c/a;

    const-string v1, "The parameter is abnormal."

    invoke-direct {v0, p1, v1}, Lcom/anythink/core/c/c/a;-><init>(Lcom/anythink/core/common/h/by;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/anythink/core/c/h$a;->b(Lcom/anythink/core/c/c/a;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return-void

    .line 158
    :goto_9
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    iget-object p0, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    if-eqz p0, :cond_10

    .line 160
    new-instance v0, Lcom/anythink/core/c/c/a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/anythink/core/c/c/a;-><init>(Lcom/anythink/core/common/h/by;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/anythink/core/c/h$a;->b(Lcom/anythink/core/c/c/a;)V

    :cond_10
    :goto_a
    return-void
.end method

.method private a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/api/ATBidRequestInfo;)V
    .locals 10

    if-eqz p2, :cond_f

    .line 18
    :try_start_0
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBidRequestInfo;->toRequestJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_8

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget v0, v0, Lcom/anythink/core/common/h/a;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v1, v1, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    iget-object v1, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    invoke-static {p2, v0, p1, v1}, Lcom/anythink/core/c/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/a;)V

    .line 20
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->y()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_c

    .line 21
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->l()Lorg/json/JSONArray;

    move-result-object v0

    .line 22
    const-string v1, "ecpoffer"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget v0, v0, Lcom/anythink/core/common/h/a;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 25
    const-string v0, "get_offer"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    goto/16 :goto_9

    .line 26
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v0, v0, Lcom/anythink/core/common/h/a;->s:Lcom/anythink/core/common/h/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/n;->al()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27
    iget-object v0, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v0, v0, Lcom/anythink/core/common/h/a;->A:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {v0}, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->getBidFloor()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_a

    .line 29
    invoke-virtual {v0}, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->getCurrency()Lcom/anythink/core/api/ATAdConst$CURRENCY;

    move-result-object v5

    if-nez v5, :cond_2

    .line 30
    sget-object v5, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 31
    :cond_2
    iget-object v6, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    iget-object v6, v6, Lcom/anythink/core/common/h/a;->n:Lcom/anythink/core/common/h/ce;

    invoke-virtual {v6}, Lcom/anythink/core/common/h/ce;->a()Lcom/anythink/core/e/m;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/e/m;->M()D

    move-result-wide v6

    .line 32
    sget-object v8, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    if-ne v5, v8, :cond_3

    :goto_2
    mul-double/2addr v3, v6

    goto :goto_3

    .line 33
    :cond_3
    sget-object v8, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    if-ne v5, v8, :cond_4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v8

    goto :goto_2

    .line 34
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;->getExtraMap()Ljava/util/Map;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    .line 35
    const-string v6, "extra_type"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 36
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_6

    .line 37
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v5

    :goto_4
    move v5, v1

    :cond_6
    if-eqz v5, :cond_9

    .line 38
    :try_start_3
    const-string v1, "g_bidfloor"

    invoke-virtual {p2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 39
    const-string v1, "extra_m_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    const-string v6, "extra_tp_m_info"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 41
    const-string v7, "extra_l_s_p"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    instance-of v7, v1, Lorg/json/JSONObject;

    if-eqz v7, :cond_7

    .line 43
    check-cast v1, Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 45
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 46
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 48
    :cond_7
    instance-of v1, v6, Lorg/json/JSONArray;

    if-eqz v1, :cond_8

    .line 49
    check-cast v6, Lorg/json/JSONArray;

    .line 50
    const-string v1, "wf_g"

    invoke-virtual {p2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_8
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_9

    .line 52
    const-string v1, "last_stop_price"

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p2, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    .line 53
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_7
    if-nez v5, :cond_a

    .line 54
    const-string v0, "c_bidfloor"

    invoke-virtual {p2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 55
    :cond_a
    :try_start_5
    const-string v0, "bit_token_al_it"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 56
    instance-of v1, v0, [Lorg/json/JSONArray;

    if-eqz v1, :cond_b

    .line 57
    invoke-static {}, Lcom/anythink/core/common/c/b;->a()Lcom/anythink/core/common/c/b;

    move-result-object v1

    check-cast v0, [Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/c/b;->a([Lorg/json/JSONArray;)V

    .line 58
    :cond_b
    const-string v0, "bit_token_mk_it"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 59
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 60
    invoke-static {}, Lcom/anythink/core/common/c/b;->a()Lcom/anythink/core/common/c/b;

    move-result-object v1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/c/b;->a(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 61
    :catchall_3
    :cond_c
    :try_start_6
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->n()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v0, v2, :cond_d

    .line 62
    :try_start_7
    const-string v0, "admob_bid_type"

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->aU()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v0, "network_id"

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->aT()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 64
    :catchall_4
    :cond_d
    :try_start_8
    new-instance v2, Lcom/anythink/core/c/c/a;

    invoke-direct {v2, p1, p2}, Lcom/anythink/core/c/c/a;-><init>(Lcom/anythink/core/common/h/by;Lorg/json/JSONObject;)V

    .line 65
    iget-wide v3, p0, Lcom/anythink/core/c/h;->f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lcom/anythink/core/c/c/a;->a(JJJ)V

    .line 66
    iget-boolean p2, p0, Lcom/anythink/core/c/h;->g:Z

    invoke-virtual {v2, p2}, Lcom/anythink/core/c/c/a;->a(Z)V

    .line 67
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->bJ()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 68
    iget-boolean p2, p0, Lcom/anythink/core/c/h;->h:Z

    if-eqz p2, :cond_e

    .line 69
    iget-object p2, p0, Lcom/anythink/core/c/h;->b:Lcom/anythink/core/common/h/a;

    if-eqz p2, :cond_e

    .line 70
    iget-object p2, p2, Lcom/anythink/core/common/h/a;->J:Lcom/anythink/core/common/f;

    if-eqz p2, :cond_e

    .line 71
    invoke-virtual {p2}, Lcom/anythink/core/common/f;->f()Lcom/anythink/core/c/f;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 72
    invoke-virtual {p2}, Lcom/anythink/core/common/f;->f()Lcom/anythink/core/c/f;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/core/c/h;->e:Ljava/lang/String;

    .line 73
    iget-object p2, p2, Lcom/anythink/core/c/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_e
    iget-object p2, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    if-eqz p2, :cond_10

    .line 75
    invoke-interface {p2, v2}, Lcom/anythink/core/c/h$a;->a(Lcom/anythink/core/c/c/a;)V

    goto :goto_a

    .line 76
    :cond_f
    :goto_8
    iget-object p2, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    if-eqz p2, :cond_10

    .line 77
    new-instance v0, Lcom/anythink/core/c/c/a;

    const-string v1, "The parameter is abnormal."

    invoke-direct {v0, p1, v1}, Lcom/anythink/core/c/c/a;-><init>(Lcom/anythink/core/common/h/by;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/anythink/core/c/h$a;->b(Lcom/anythink/core/c/c/a;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return-void

    .line 78
    :goto_9
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    iget-object v0, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    if-eqz v0, :cond_10

    .line 80
    new-instance v1, Lcom/anythink/core/c/c/a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/anythink/core/c/c/a;-><init>(Lcom/anythink/core/common/h/by;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/anythink/core/c/h$a;->b(Lcom/anythink/core/c/c/a;)V

    :cond_10
    :goto_a
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/anythink/core/common/h/by;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 82
    :try_start_0
    const-string v0, "admob_bid_type"

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->aU()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v0, "network_id"

    invoke-virtual {p1}, Lcom/anythink/core/common/h/by;->aT()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/anythink/core/c/h;->h:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/h/by;Lcom/anythink/core/c/h$a;)V
    .locals 4

    .line 2
    iput-object p2, p0, Lcom/anythink/core/c/h;->d:Lcom/anythink/core/c/h$a;

    .line 3
    invoke-static {}, Lcom/anythink/core/common/v/b/c;->a()Lcom/anythink/core/common/v/b/c;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/v/b/d;

    sget-object v2, Lcom/anythink/core/common/v/b/e;->bT:Ljava/lang/String;

    new-instance v3, Lcom/anythink/core/c/h$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/anythink/core/c/h$1;-><init>(Lcom/anythink/core/c/h;Lcom/anythink/core/common/h/by;Lcom/anythink/core/c/h$a;)V

    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/v/b/d;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v/b/c;->b(Lcom/anythink/core/common/v/b/d;)V

    return-void
.end method
