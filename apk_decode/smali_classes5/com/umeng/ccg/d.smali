.class public Lcom/umeng/ccg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/ccg/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/ccg/d$d;,
        Lcom/umeng/ccg/d$e;,
        Lcom/umeng/ccg/d$b;,
        Lcom/umeng/ccg/d$f;,
        Lcom/umeng/ccg/d$a;,
        Lcom/umeng/ccg/d$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "iucc"

.field private static final b:Ljava/lang/String;

.field private static c:Lorg/json/JSONObject;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/ad;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/ad;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/ad;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/analytics/pro/ad;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lcom/umeng/analytics/pro/ac;

.field private static volatile m:Z

.field private static o:Lcom/umeng/ccg/d$f;


# instance fields
.field private volatile k:Ljava/lang/String;

.field private volatile l:Z

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/ccg/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/umeng/analytics/pro/be;->b()Lcom/umeng/analytics/pro/be;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ccfg"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/be;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/umeng/ccg/d;->b:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/umeng/ccg/d;->c:Lorg/json/JSONObject;

    .line 15
    .line 16
    const-string v1, "screen_on"

    .line 17
    .line 18
    const-string v2, "screen_off"

    .line 19
    .line 20
    const-string v3, "screen_unlock"

    .line 21
    .line 22
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    sput-object v4, Lcom/umeng/ccg/d;->d:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v4, "umc_cfg"

    .line 29
    .line 30
    const-string v5, "ap_mode"

    .line 31
    .line 32
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sput-object v1, Lcom/umeng/ccg/d;->e:[Ljava/lang/String;

    .line 37
    .line 38
    sput-object v0, Lcom/umeng/ccg/d;->f:Ljava/util/ArrayList;

    .line 39
    .line 40
    sput-object v0, Lcom/umeng/ccg/d;->g:Ljava/util/ArrayList;

    .line 41
    .line 42
    sput-object v0, Lcom/umeng/ccg/d;->h:Ljava/util/ArrayList;

    .line 43
    .line 44
    sput-object v0, Lcom/umeng/ccg/d;->i:Ljava/util/ArrayList;

    .line 45
    .line 46
    sput-object v0, Lcom/umeng/ccg/d;->j:Lcom/umeng/analytics/pro/ac;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcom/umeng/ccg/d;->m:Z

    .line 50
    .line 51
    new-instance v0, Lcom/umeng/ccg/d$f;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/umeng/ccg/d$f;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/umeng/ccg/d;->o:Lcom/umeng/ccg/d$f;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/umeng/ccg/d;->k:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/umeng/ccg/d;->l:Z

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/ac;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 51
    const-string v3, "sdk"

    const-string v4, "hour_on"

    const-string v5, "week_on"

    const-string v6, "col_delay_ts"

    const-string v7, "col_interval"

    const-string v8, "col_delay_times"

    const-string v9, "cfg"

    if-eqz v2, :cond_14

    .line 52
    :try_start_0
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 53
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 54
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_14

    const/4 v11, 0x0

    .line 55
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 56
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    .line 57
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    .line 58
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    if-nez v14, :cond_1

    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 59
    :cond_1
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 60
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 61
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 62
    const-string v14, "hit_sdk"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 63
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v17, 0x0

    const-string v10, "umc_cfg"

    if-eqz v16, :cond_5

    .line 65
    :try_start_1
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 66
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    if-eqz v5, :cond_2

    .line 67
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    move-object/from16 v18, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 68
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    move/from16 v20, v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v20

    goto :goto_0

    :catchall_0
    :goto_1
    move-object/from16 v10, v17

    goto/16 :goto_b

    :cond_2
    move-object/from16 v18, v3

    .line 69
    :cond_3
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 70
    new-instance v2, Lcom/umeng/analytics/pro/an;

    invoke-direct {v2, v11}, Lcom/umeng/analytics/pro/an;-><init>(Ljava/util/Set;)V

    .line 71
    sget-object v3, Lcom/umeng/ccg/d;->d:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    invoke-direct {v0, v1, v2}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lcom/umeng/analytics/pro/ad;)V

    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 75
    invoke-direct {v0, v1, v2}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lcom/umeng/analytics/pro/ad;)V

    goto :goto_2

    :cond_5
    move-object/from16 v18, v3

    .line 76
    :cond_6
    :goto_2
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 77
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 79
    new-instance v4, Lcom/umeng/analytics/pro/al;

    invoke-direct {v4, v2}, Lcom/umeng/analytics/pro/al;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v5, v3

    :goto_3
    const/16 v11, 0x18

    if-gt v5, v11, :cond_8

    .line 81
    invoke-virtual {v4, v5}, Lcom/umeng/analytics/pro/al;->a(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 82
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 83
    :cond_8
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 84
    new-instance v4, Lcom/umeng/analytics/pro/ah;

    invoke-direct {v4, v2}, Lcom/umeng/analytics/pro/ah;-><init>(Ljava/util/Set;)V

    .line 85
    sget-object v2, Lcom/umeng/ccg/d;->d:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 86
    invoke-direct {v0, v1, v4}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lcom/umeng/analytics/pro/ad;)V

    goto :goto_4

    .line 87
    :cond_9
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_4
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 89
    invoke-direct {v0, v1, v4}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lcom/umeng/analytics/pro/ad;)V

    .line 90
    :cond_a
    new-instance v2, Lcom/umeng/analytics/pro/aj;

    invoke-direct {v2, v8}, Lcom/umeng/analytics/pro/aj;-><init>(I)V

    .line 91
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v2, Lcom/umeng/analytics/pro/ai;

    invoke-direct {v2, v1, v12, v13}, Lcom/umeng/analytics/pro/ai;-><init>(Ljava/lang/String;J)V

    .line 93
    sget-object v4, Lcom/umeng/ccg/d;->d:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 94
    invoke-direct {v0, v1, v2}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lcom/umeng/analytics/pro/ad;)V

    goto :goto_5

    .line 95
    :cond_b
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_5
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 97
    invoke-direct {v0, v1, v2}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lcom/umeng/analytics/pro/ad;)V

    .line 98
    :cond_c
    new-instance v2, Lcom/umeng/analytics/pro/ag;

    invoke-direct {v2, v6, v7}, Lcom/umeng/analytics/pro/ag;-><init>(J)V

    .line 99
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 100
    invoke-direct {v0, v1, v2}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lcom/umeng/analytics/pro/ad;)V

    .line 101
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 102
    :cond_d
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_6
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 104
    invoke-direct {v0, v1, v2}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lcom/umeng/analytics/pro/ad;)V

    .line 105
    :cond_e
    const-string v2, "col_apl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 106
    new-instance v2, Lcom/umeng/analytics/pro/ae;

    invoke-direct {v2, v1, v15}, Lcom/umeng/analytics/pro/ae;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_7
    move-object v10, v2

    goto :goto_8

    .line 107
    :cond_f
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 108
    new-instance v2, Lcom/umeng/analytics/pro/af;

    invoke-direct {v2, v1, v15}, Lcom/umeng/analytics/pro/af;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_7

    .line 109
    :cond_10
    new-instance v2, Lcom/umeng/analytics/pro/ac;

    invoke-direct {v2, v1, v15}, Lcom/umeng/analytics/pro/ac;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 110
    :goto_8
    :try_start_2
    invoke-virtual {v10, v1, v9}, Lcom/umeng/analytics/pro/ac;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 111
    invoke-virtual {v10, v14}, Lcom/umeng/analytics/pro/ac;->a(Ljava/lang/String;)V

    .line 112
    const-string v2, ""

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    .line 113
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 114
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 115
    iget-object v5, v0, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    if-eqz v5, :cond_11

    .line 116
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 117
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v5, Lcom/umeng/ccg/d$c;

    invoke-direct {v5, v0, v6, v14}, Lcom/umeng/ccg/d$c;-><init>(Lcom/umeng/ccg/d;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 120
    iget-object v6, v0, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v11, 0x0

    .line 122
    :goto_9
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v11, v5, :cond_13

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v1, -0x1

    if-ge v11, v5, :cond_12

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 125
    :cond_13
    invoke-virtual {v10, v2}, Lcom/umeng/analytics/pro/ac;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v10

    :catchall_1
    const/16 v17, 0x0

    goto/16 :goto_1

    :goto_a
    return-object v17

    :cond_14
    const/16 v17, 0x0

    goto :goto_c

    :catchall_2
    :goto_b
    return-object v10

    :goto_c
    return-object v17
.end method

.method public static a()Lcom/umeng/ccg/d;
    .locals 1

    .line 5
    invoke-static {}, Lcom/umeng/ccg/d$e;->a()Lcom/umeng/ccg/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 6

    .line 168
    const-string v0, "umc_cfg"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 169
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 170
    const-string v4, "id"

    const-string v5, "$$_umc_ev1"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v4, "ts"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 172
    const-string v2, "tt"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string p1, "mock"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string p1, "result"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    iget-object p1, p0, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/umeng/ccg/d$c;

    if-eqz p1, :cond_0

    .line 177
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/umeng/ccg/d$c;->a()Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p1}, Lcom/umeng/ccg/d$c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 178
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 179
    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/ap;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :try_start_0
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 128
    array-length v0, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 129
    invoke-static {p1}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 130
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 131
    aget-object p2, p2, v2

    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 133
    const-string v2, "config_ts"

    invoke-interface {p1, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v2, "iucc_s1"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string v2, "iucc_s2"

    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    const-string p1, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTsS1S2 : ts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "; s1 = "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "; s2 = "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-direct {p0, p2}, Lcom/umeng/ccg/d;->b(Lorg/json/JSONObject;)J

    move-result-wide v0

    .line 11
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 12
    sget-object v3, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 13
    array-length v3, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    goto/16 :goto_0

    .line 14
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/umeng/ccg/d;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 17
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-static {v4}, Lcom/umeng/analytics/pro/at;->a(Ljava/io/Closeable;)V

    .line 19
    invoke-direct {p0, p1, p3, v0, v1}, Lcom/umeng/ccg/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 20
    const-string p3, "MobclickRT"

    const-string v0, "saveConfigFile success."

    invoke-static {p3, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string p3, "cc"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 23
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/umeng/analytics/pro/bz;->n:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    const-string p1, "col_pi"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 26
    const-string p1, "MobclickRT"

    const-string p2, "PI: cfg is on, flag not exist, create it."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 29
    const-string p1, "MobclickRT"

    const-string p2, "PI: cfg is off, flag exist, delete it."

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 31
    invoke-static {v4}, Lcom/umeng/analytics/pro/at;->a(Ljava/io/Closeable;)V

    .line 32
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 34
    :catchall_1
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private a(Lcom/umeng/analytics/pro/o$d;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 193
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 194
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 195
    const-string v3, "id"

    const-string v4, "$$_po_stop"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o$d;->a()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    const-string v4, "sid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    :cond_1
    const-string v3, "cls"

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o$d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v3, "ts"

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o$d;->c()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    const-string p1, "ekv"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 204
    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ap;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 205
    new-instance v0, Lcom/umeng/analytics/pro/ar;

    const-string v1, "https://cnlogs.umeng.com/common_inout_logs"

    invoke-direct {v0, v1, p1}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .line 137
    const-string v0, "@"

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 139
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    .line 140
    aget-object v1, v1, v5

    .line 141
    iget-object v6, p0, Lcom/umeng/ccg/d;->k:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "MobclickRT"

    if-nez v6, :cond_1

    .line 142
    :try_start_1
    iget-object v6, p0, Lcom/umeng/ccg/d;->k:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 143
    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 144
    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 145
    aget-object v2, v6, v5

    cmp-long v5, v8, v3

    if-nez v5, :cond_1

    .line 146
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    const-string p1, "\u91cd\u590d\u7684iucc S1 and S2, \u5ffd\u7565\u672c\u6b21\u66f4\u65b0\uff0c\u4e0d\u53d1\u8d77fetch\u3002"

    invoke-static {v7, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 149
    const-string v5, "config_ts"

    const-wide/16 v8, 0x0

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v2, v5, v3

    const/16 v5, 0x65

    if-eqz v2, :cond_2

    .line 150
    const-string v2, "local config ts != iuccS1, send FETCH_NEW_CONFIG msg."

    invoke-static {v7, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/ccg/d;->k:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v1

    .line 154
    invoke-static {v0, v5, v1, p1}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;)V

    return-void

    .line 155
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/ccg/d;->d(Landroid/content/Context;)Ljava/lang/Long;

    .line 156
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/ccg/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    const-string v2, "local S2 != iuccS2, send FETCH_NEW_CONFIG msg."

    invoke-static {v7, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/ccg/d;->k:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v1

    .line 162
    invoke-static {v0, v5, v1, p1}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/umeng/analytics/pro/ad;)V
    .locals 1

    .line 35
    const-string v0, "screen_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lcom/umeng/ccg/d;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/ccg/d;->f:Ljava/util/ArrayList;

    .line 38
    :cond_0
    sget-object v0, Lcom/umeng/ccg/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    const-string v0, "screen_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    sget-object v0, Lcom/umeng/ccg/d;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/ccg/d;->g:Ljava/util/ArrayList;

    .line 42
    :cond_2
    sget-object v0, Lcom/umeng/ccg/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_3
    const-string v0, "screen_unlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    sget-object v0, Lcom/umeng/ccg/d;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/ccg/d;->h:Ljava/util/ArrayList;

    .line 46
    :cond_4
    sget-object v0, Lcom/umeng/ccg/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_5
    const-string v0, "umc_cfg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 48
    sget-object p1, Lcom/umeng/ccg/d;->i:Ljava/util/ArrayList;

    if-nez p1, :cond_6

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/umeng/ccg/d;->i:Ljava/util/ArrayList;

    .line 50
    :cond_6
    sget-object p1, Lcom/umeng/ccg/d;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 163
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    const-string v1, "should_fetch"

    if-eqz p1, :cond_0

    .line 166
    :try_start_1
    const-string p1, "1"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 167
    :cond_0
    const-string p1, ""

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 7
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_0

    .line 9
    const-string v0, "cc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lorg/json/JSONObject;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private b(Lcom/umeng/analytics/pro/o$d;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 19
    const-string v3, "id"

    const-string v4, "$$_po_resume"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o$d;->a()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 22
    const-string v4, "sid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_1
    const-string v3, "cls"

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o$d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v3, "ts"

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o$d;->c()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 25
    const-string v3, "dur"

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o$d;->d()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    const-string v3, "r"

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o$d;->e()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    const-string p1, "ekv"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 30
    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/ap;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 31
    new-instance v0, Lcom/umeng/analytics/pro/ar;

    const-string v1, "https://cnlogs.umeng.com/common_inout_logs"

    invoke-direct {v0, v1, p1}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interval_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcom/umeng/ccg/d;->m:Z

    return v0
.end method

.method public static synthetic c()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/ccg/d;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    new-instance v0, Lcom/umeng/ccg/d$1;

    invoke-direct {v0, p0}, Lcom/umeng/ccg/d$1;-><init>(Lcom/umeng/ccg/d;)V

    const-string v1, "iucc"

    invoke-virtual {p1, v1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 10

    .line 3
    const-string v0, "ap_mode"

    const-string v1, "screen_unlock"

    const-string v2, "screen_off"

    const-string v3, "screen_on"

    const-string v4, "col_apl"

    const-string v5, "col_lbs"

    const-string v6, "col_bs"

    const-string v7, "col_wifi"

    if-eqz p1, :cond_11

    .line 4
    const-string v8, "cc"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_7

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 7
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/ac;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v9

    .line 8
    :goto_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/ac;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v9

    .line 10
    :goto_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 11
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/ac;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v9

    .line 12
    :goto_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 13
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v4, v8}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/ac;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v9

    .line 14
    :goto_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 15
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/ac;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v9

    .line 16
    :goto_4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 17
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/ac;

    move-result-object v2

    goto :goto_5

    :cond_6
    move-object v2, v9

    .line 18
    :goto_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v1, v8}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/ac;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v9

    .line 20
    :goto_6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/ac;

    move-result-object v9

    .line 22
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_9

    .line 23
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v6, :cond_a

    .line 24
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz v5, :cond_b

    .line 25
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v4, :cond_c

    .line 26
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v3, :cond_d

    .line 27
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v2, :cond_e

    .line 28
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v1, :cond_f

    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v9, :cond_10

    .line 30
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_10
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v1

    const/16 v2, 0xca

    .line 33
    invoke-static {v0, v2, v1, p1}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_11
    :goto_7
    return-void
.end method

.method private d(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    const-string v3, "iucc_s1"

    invoke-interface {p1, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    return-object v2
.end method

.method public static synthetic d()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/ccg/d;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    const-string v0, ""

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    const-string v1, "iucc_s2"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static synthetic e()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/ccg/d;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic f()Lcom/umeng/analytics/pro/ac;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/ccg/d;->j:Lcom/umeng/analytics/pro/ac;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic g()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/ccg/d;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method private h()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v2, "sdk_type_ver"

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/umeng/ccg/d;->i()V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lcom/umeng/analytics/pro/at;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {}, Lcom/umeng/analytics/pro/at;->a()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    return v0

    .line 59
    :catchall_0
    :cond_1
    return v1
.end method

.method private i()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/umeng/analytics/pro/at;->a()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "sdk_type_ver"

    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    :cond_0
    return-void
.end method

.method private j()Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "should_fetch"

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method private k()Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genUmc()[B

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/ay;->b([BLjava/io/OutputStream;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genSin()[B

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :catchall_0
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lorg/json/JSONObject;
    .locals 3

    .line 180
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 181
    :try_start_0
    const-string v1, "id"

    const-string v2, "$$_umc_ev2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v1, "ts"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 183
    const-string p4, "tt"

    invoke-virtual {v0, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string p1, "flag"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string p1, "ss"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const-string p1, "cd"

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    .line 187
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 188
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    :goto_0
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const-string p3, ""

    invoke-static {p1, p2, p3}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 190
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 191
    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/ap;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 6
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x69

    invoke-static {p1, v2, v0, v1}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 206
    const-string v3, "last_ap_mode"

    const/4 v4, 0x0

    .line 207
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x191

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 208
    const-string v10, "MobclickRT"

    if-eq v2, v6, :cond_32

    const/16 v3, 0x192

    const-string v6, "https://aspect-upush.umeng.com/occa/v1/event/report"

    if-eq v2, v3, :cond_2e

    const-string v3, "iucc"

    const-string v13, "result"

    const-string v15, "config"

    const-wide/16 v16, 0x3e8

    const-string v11, ""

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x2

    const-string v5, "screen_on"

    const-string v12, "screen_off"

    const-string v13, "screen_unlock"

    const-string v15, "delay"

    const/16 v18, 0x0

    const-string v14, "act_when"

    move/from16 v19, v4

    const-string v4, "umc_cfg"

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_12

    .line 209
    :pswitch_0
    const-string v0, "PO: recv GET_PO_LC_INFO msg."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-boolean v0, Lcom/umeng/ccg/d;->m:Z

    if-nez v0, :cond_0

    .line 211
    const-string v0, "PO: cloud switch is OFF, skip lc consumption."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 213
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->i()Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v3, v19

    .line 214
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 215
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 216
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v7

    .line 217
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/16 v6, 0x13a

    .line 218
    invoke-static/range {v5 .. v10}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->j()Ljava/util/ArrayList;

    move-result-object v0

    move/from16 v4, v19

    .line 220
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_35

    .line 221
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 222
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v7

    .line 223
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/16 v6, 0x13b

    .line 224
    invoke-static/range {v5 .. v10}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 225
    :pswitch_1
    const-string v2, "PO: recv REPORT_PO_RESUME msg."

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-boolean v2, Lcom/umeng/ccg/d;->m:Z

    if-nez v2, :cond_2

    goto/16 :goto_12

    :cond_2
    if-eqz v0, :cond_35

    .line 227
    instance-of v2, v0, Lcom/umeng/analytics/pro/o$d;

    if-eqz v2, :cond_35

    .line 228
    check-cast v0, Lcom/umeng/analytics/pro/o$d;

    .line 229
    invoke-direct {v1, v0}, Lcom/umeng/ccg/d;->b(Lcom/umeng/analytics/pro/o$d;)V

    return-void

    .line 230
    :pswitch_2
    const-string v2, "PO: recv REPORT_PO_STOP msg."

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-boolean v2, Lcom/umeng/ccg/d;->m:Z

    if-nez v2, :cond_3

    goto/16 :goto_12

    :cond_3
    if-eqz v0, :cond_35

    .line 232
    instance-of v2, v0, Lcom/umeng/analytics/pro/o$d;

    if-eqz v2, :cond_35

    .line 233
    check-cast v0, Lcom/umeng/analytics/pro/o$d;

    .line 234
    invoke-direct {v1, v0}, Lcom/umeng/ccg/d;->a(Lcom/umeng/analytics/pro/o$d;)V

    return-void

    .line 235
    :pswitch_3
    const-string v2, "PO: recv REPORT_PO_INFO msg."

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_35

    .line 236
    instance-of v2, v0, Lcom/umeng/analytics/pro/o$c;

    if-eqz v2, :cond_35

    .line 237
    check-cast v0, Lcom/umeng/analytics/pro/o$c;

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>>PO: po: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; ts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->a()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->b()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 242
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 243
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 244
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 245
    const-string v9, "id"

    const-string v10, "$$_po"

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v9, "pkg"

    invoke-virtual {v6, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v2, "cls"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v2, "ts"

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->d()J

    move-result-wide v9

    invoke-virtual {v6, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 249
    const-string v2, "u"

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->g()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 252
    const-string v3, "sid"

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    :cond_4
    invoke-static {}, Lcom/umeng/analytics/pro/o;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 254
    const-string v2, "stat"

    const-string v3, "fg"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 255
    :cond_5
    const-string v2, "stat"

    const-string v3, "bg"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :goto_2
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->f()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 258
    const-string v2, "args"

    invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_6
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 260
    const-string v0, "ekv"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, v2, v11}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 262
    invoke-static {v0, v4}, Lcom/umeng/analytics/pro/ap;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 263
    new-instance v2, Lcom/umeng/analytics/pro/ar;

    const-string v3, "https://cnlogs.umeng.com/common_inout_logs"

    invoke-direct {v2, v3, v0}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v7, v8, v0}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 264
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto/16 :goto_12

    .line 265
    :pswitch_4
    const-string v2, "PI: recv REPORT_PI_INFO msg."

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_35

    .line 266
    instance-of v2, v0, Lcom/umeng/analytics/pro/o$b;

    if-eqz v2, :cond_35

    .line 267
    check-cast v0, Lcom/umeng/analytics/pro/o$b;

    .line 268
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$b;->a()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 270
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 271
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 272
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 273
    const-string v6, "id"

    const-string v9, "$$_pi"

    invoke-virtual {v5, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v6, "pkg"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v2, "ts"

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$b;->b()J

    move-result-wide v9

    invoke-virtual {v5, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 276
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$b;->c()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 278
    const-string v2, "args"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    :cond_7
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 280
    const-string v0, "ekv"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, v2, v11}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 282
    invoke-static {v0, v3}, Lcom/umeng/analytics/pro/ap;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 283
    new-instance v2, Lcom/umeng/analytics/pro/ar;

    const-string v3, "https://cnlogs.umeng.com/common_inout_logs"

    invoke-direct {v2, v3, v0}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v7, v8, v0}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 284
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    goto/16 :goto_12

    .line 285
    :pswitch_5
    const-string v0, "PO: recv GET_PO_INFO msg."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-boolean v0, Lcom/umeng/ccg/d;->m:Z

    if-nez v0, :cond_8

    .line 287
    const-string v0, "PO: cloud switch is OFF, skip consumption."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_8
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 289
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->g()Ljava/util/ArrayList;

    move-result-object v0

    move/from16 v4, v19

    .line 290
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_35

    .line 291
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/umeng/analytics/pro/o$c;

    .line 292
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 293
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v7

    const-wide/16 v9, 0xbb8

    const/16 v6, 0x139

    .line 294
    invoke-static/range {v5 .. v10}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 295
    :pswitch_6
    const-string v0, "PI: recv GET_PI_INFO msg."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 297
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->f()Ljava/util/ArrayList;

    move-result-object v0

    move/from16 v4, v19

    .line 298
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_35

    .line 299
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/umeng/analytics/pro/o$b;

    .line 300
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 301
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v7

    const-wide/16 v9, 0x0

    const/16 v6, 0x138

    .line 302
    invoke-static/range {v5 .. v10}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 303
    :pswitch_7
    :try_start_2
    check-cast v0, Lcom/umeng/ccg/d$d;

    .line 304
    iget-object v2, v0, Lcom/umeng/ccg/d$d;->a:Ljava/lang/String;

    .line 305
    iget v3, v0, Lcom/umeng/ccg/d$d;->b:I

    .line 306
    iget v0, v0, Lcom/umeng/ccg/d$d;->c:I

    .line 307
    invoke-direct {v1, v2, v3, v0}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 308
    new-instance v2, Lcom/umeng/analytics/pro/ar;

    const-string v3, "https://cnlogs.umeng.com/ext_event"

    invoke-direct {v2, v3, v0}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v7, v8, v0}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    goto/16 :goto_12

    .line 309
    :pswitch_8
    const-string v0, "recv INVOKE_APPACT_WHEN_SC_ON msg."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {v4}, Lcom/umeng/ccg/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 311
    const-string v0, "Local switch of [umc_cfg] is off, ignore this command."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 312
    :cond_9
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 313
    const-string v2, "scene"

    const/16 v3, 0x130

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    sget-object v2, Lcom/umeng/ccg/d;->j:Lcom/umeng/analytics/pro/ac;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/ac;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/umeng/analytics/pro/ac;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 315
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4, v0}, Lcom/umeng/ccg/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 316
    :cond_a
    const-string v0, "appActAction.process return null !"

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    return-void

    .line 317
    :pswitch_9
    const-string v0, "recv REPORT_SCREEN_UNLOCK msg."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :try_start_4
    invoke-direct {v1, v13}, Lcom/umeng/ccg/d;->b(Ljava/lang/String;)V

    .line 319
    iget-object v0, v1, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 320
    iget-object v0, v1, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/ccg/d$c;

    if-eqz v0, :cond_35

    .line 321
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 322
    invoke-virtual {v0}, Lcom/umeng/ccg/d$c;->a()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0}, Lcom/umeng/ccg/d$c;->b()Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, v1, Lcom/umeng/ccg/d;->l:Z

    .line 323
    invoke-static {v2, v3, v4, v0, v5}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;ILorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen_unlock event param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v2, Lcom/umeng/analytics/pro/ar;

    invoke-direct {v2, v6, v0}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v7, v8, v0}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto/16 :goto_12

    .line 326
    :pswitch_a
    const-string v0, "recv REPORT_SCREEN_OFF msg."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :try_start_5
    invoke-direct {v1, v12}, Lcom/umeng/ccg/d;->b(Ljava/lang/String;)V

    .line 328
    iget-object v0, v1, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 329
    iget-object v0, v1, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/ccg/d$c;

    if-eqz v0, :cond_35

    .line 330
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 331
    invoke-virtual {v0}, Lcom/umeng/ccg/d$c;->a()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0}, Lcom/umeng/ccg/d$c;->b()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, v1, Lcom/umeng/ccg/d;->l:Z

    const/4 v5, 0x3

    .line 332
    invoke-static {v2, v5, v3, v0, v4}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;ILorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen_off event param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v2, Lcom/umeng/analytics/pro/ar;

    invoke-direct {v2, v6, v0}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v7, v8, v0}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto/16 :goto_12

    .line 335
    :pswitch_b
    const-string v0, "recv REPORT_SCREEN_ON msg."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :try_start_6
    invoke-direct {v1, v5}, Lcom/umeng/ccg/d;->b(Ljava/lang/String;)V

    .line 337
    iget-object v0, v1, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 338
    iget-object v0, v1, Lcom/umeng/ccg/d;->n:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/ccg/d$c;

    if-eqz v0, :cond_35

    .line 339
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 340
    invoke-virtual {v0}, Lcom/umeng/ccg/d$c;->a()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0}, Lcom/umeng/ccg/d$c;->b()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, v1, Lcom/umeng/ccg/d;->l:Z

    .line 341
    invoke-static {v2, v9, v3, v0, v4}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;ILorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen_on event param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v2, Lcom/umeng/analytics/pro/ar;

    invoke-direct {v2, v6, v0}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v7, v8, v0}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_12

    :pswitch_c
    if-eqz v0, :cond_35

    .line 344
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_35

    .line 345
    check-cast v0, Lorg/json/JSONObject;

    .line 346
    const-string v2, "actionName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recv ACTUP_EVENT msg. name is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {v2}, Lcom/umeng/ccg/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local switch of ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] is off, ignore this command."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 350
    :cond_b
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 351
    invoke-static {}, Lcom/umeng/ccg/CcgAgent;->getActUpFlag()I

    move-result v5

    .line 352
    const-string v6, "index"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 353
    const-string v6, "index"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move/from16 v19, v6

    .line 354
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "act up flag: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v5, :cond_d

    if-nez v19, :cond_d

    goto/16 :goto_12

    .line 355
    :cond_d
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 356
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 357
    const-string v6, "sel_policy"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-nez v5, :cond_35

    if-ne v6, v3, :cond_35

    .line 358
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/umeng/ccg/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 359
    sget-object v0, Lcom/umeng/ccg/d;->j:Lcom/umeng/analytics/pro/ac;

    if-eqz v0, :cond_35

    instance-of v2, v0, Lcom/umeng/analytics/pro/af;

    if-eqz v2, :cond_35

    .line 360
    check-cast v0, Lcom/umeng/analytics/pro/af;

    invoke-virtual {v0, v4}, Lcom/umeng/analytics/pro/af;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_35

    .line 361
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 362
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v7, v0

    :cond_e
    move-wide v13, v7

    .line 363
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v9

    .line 364
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v11

    const/16 v10, 0xcc

    .line 365
    invoke-static/range {v9 .. v14}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    return-void

    :pswitch_d
    if-eqz v0, :cond_35

    .line 366
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_35

    .line 367
    check-cast v0, Lorg/json/JSONObject;

    .line 368
    const-string v2, "actionName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recv START_COLLECT msg. name is : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {v2}, Lcom/umeng/ccg/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local switch of ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] is off, ignore this command."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 372
    :cond_f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 373
    sget-object v6, Lcom/umeng/ccg/d;->e:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 374
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 375
    const-string v3, "register Intent.ACTION_SCREEN_ON"

    invoke-static {v10, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.intent.action.SCREEN_ON"

    sget-object v6, Lcom/umeng/ccg/d;->o:Lcom/umeng/ccg/d$f;

    invoke-static {v3, v5, v6}, Lcom/umeng/ccg/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 377
    :cond_10
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 378
    const-string v3, "register Intent.ACTION_SCREEN_OFF"

    invoke-static {v10, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.intent.action.SCREEN_OFF"

    sget-object v6, Lcom/umeng/ccg/d;->o:Lcom/umeng/ccg/d$f;

    invoke-static {v3, v5, v6}, Lcom/umeng/ccg/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 380
    :cond_11
    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 381
    const-string v3, "register Intent.ACTION_USER_PRESENT"

    invoke-static {v10, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.intent.action.USER_PRESENT"

    sget-object v6, Lcom/umeng/ccg/d;->o:Lcom/umeng/ccg/d$f;

    invoke-static {v3, v5, v6}, Lcom/umeng/ccg/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 383
    :cond_12
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 384
    invoke-static {}, Lcom/umeng/ccg/CcgAgent;->getActUpFlag()I

    move-result v3

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "act up flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_13

    goto/16 :goto_12

    .line 386
    :cond_13
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 387
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_14

    .line 388
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/umeng/ccg/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_5

    :cond_14
    if-ne v3, v9, :cond_15

    .line 389
    new-instance v0, Lcom/umeng/ccg/d$b;

    invoke-direct {v0}, Lcom/umeng/ccg/d$b;-><init>()V

    .line 390
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-static {v3, v4, v0}, Lcom/umeng/ccg/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 391
    :cond_15
    :goto_5
    const-string v0, "ap_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 392
    invoke-direct {v1, v2}, Lcom/umeng/ccg/d;->b(Ljava/lang/String;)V

    .line 393
    iput-boolean v9, v1, Lcom/umeng/ccg/d;->l:Z

    .line 394
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 395
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v4, 0x191

    .line 396
    invoke-static/range {v3 .. v8}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    return-void

    .line 397
    :cond_16
    invoke-direct {v1, v2}, Lcom/umeng/ccg/d;->b(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/umeng/ccg/CcgAgent;->hasRegistedActionInfo()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 399
    const-string v4, "anti"

    invoke-static {v4}, Lcom/umeng/ccg/CcgAgent;->getActionInfo(Ljava/lang/String;)Lcom/umeng/ccg/ActionInfo;

    move-result-object v4

    if-eqz v4, :cond_17

    move v4, v9

    goto :goto_6

    :cond_17
    move/from16 v4, v19

    .line 400
    :goto_6
    const-string v5, "local_hit_sdk"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 401
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 402
    invoke-static {v5}, Lcom/umeng/ccg/CcgAgent;->getActionInfo(Ljava/lang/String;)Lcom/umeng/ccg/ActionInfo;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8c03\u7528["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] onCommand\u63a5\u53e3\u65b9\u6cd5, \u53c2\u6570: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v6, v5, v2, v0}, Lcom/umeng/ccg/ActionInfo;->onCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 405
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5ffd\u7565 \u672c\u6b21\u91c7\u96c6\u9879["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\u91c7\u96c6\u8bf7\u6c42."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_7
    if-nez v4, :cond_35

    .line 406
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/umeng/analytics/pro/at;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 407
    :cond_1a
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/umeng/analytics/pro/at;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 408
    :pswitch_e
    const-string v2, "recv COLLECTION_JUDGMENT msg."

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_35

    .line 409
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_35

    .line 410
    check-cast v0, Ljava/util/ArrayList;

    .line 411
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_35

    move/from16 v5, v19

    :goto_8
    if-ge v5, v2, :cond_35

    .line 412
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/umeng/analytics/pro/ac;

    .line 413
    invoke-virtual {v6}, Lcom/umeng/analytics/pro/ac;->a()Ljava/lang/String;

    move-result-object v9

    .line 414
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 415
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 416
    const-string v12, "scene"

    const/16 v13, 0xca

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_9

    :cond_1b
    move-object/from16 v11, v18

    .line 417
    :goto_9
    invoke-interface {v6, v9, v11}, Lcom/umeng/analytics/pro/ak;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_20

    .line 418
    sget-object v12, Lcom/umeng/ccg/d;->d:[Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v6}, Lcom/umeng/analytics/pro/ac;->a()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    .line 419
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    mul-long v12, v12, v16

    goto :goto_a

    :cond_1c
    move-wide v12, v7

    .line 420
    :goto_a
    invoke-virtual {v6}, Lcom/umeng/analytics/pro/ac;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 421
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1d

    .line 422
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long v12, v7, v16

    .line 423
    :cond_1d
    const-string v7, "sel_policy"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 424
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send START_COLLECT msg, delayTs = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v6}, Lcom/umeng/analytics/pro/ac;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x2

    if-ne v7, v3, :cond_1f

    const/16 v6, 0xcc

    :goto_b
    move/from16 v19, v6

    goto :goto_c

    :cond_1e
    const/4 v3, 0x2

    :cond_1f
    const/16 v6, 0xcb

    goto :goto_b

    .line 427
    :goto_c
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v18

    .line 428
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v20

    move-object/from16 v21, v9

    move-wide/from16 v22, v12

    .line 429
    invoke-static/range {v18 .. v23}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    :cond_20
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v18, v11

    const-wide/16 v7, 0x0

    goto/16 :goto_8

    .line 430
    :pswitch_f
    const-string v2, "recv PARSE_CONFIG msg."

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_35

    .line 431
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_35

    .line 432
    check-cast v0, Lorg/json/JSONObject;

    .line 433
    invoke-direct {v1, v0}, Lcom/umeng/ccg/d;->c(Lorg/json/JSONObject;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    return-void

    :pswitch_10
    if-eqz v0, :cond_35

    .line 434
    :try_start_7
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_35

    .line 435
    check-cast v0, Ljava/lang/String;

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMPRINT_IUCC_CHANGED] iucc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-direct {v1, v0}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[imprint] process error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_11
    move/from16 v19, v4

    const/16 v18, 0x0

    if-eqz v0, :cond_35

    .line 439
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_35

    .line 440
    :try_start_8
    check-cast v0, Lorg/json/JSONObject;

    .line 441
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 442
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, v9

    if-eqz v2, :cond_24

    .line 443
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 444
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/umeng/ccg/d;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_24

    .line 445
    invoke-static {v0}, Lcom/umeng/ccg/CcgAgent;->notifyConfigReady(Lorg/json/JSONObject;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 446
    :try_start_9
    sget-object v0, Lcom/umeng/ccg/d;->c:Lorg/json/JSONObject;

    const-string v2, "cc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 447
    const-string v2, "col_po"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 448
    sput-boolean v9, Lcom/umeng/ccg/d;->m:Z

    .line 449
    const-string v0, "PO: cloud switch is ON."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 451
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->h()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 452
    const-string v2, "PO: found pending items, trigger report."

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v12

    .line 454
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v14

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v13, 0x137

    .line 455
    invoke-static/range {v12 .. v17}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    :cond_21
    if-eqz v0, :cond_25

    .line 456
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o;->k()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 457
    const-string v0, "PO: found pending lc items, trigger report."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v12

    .line 459
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v14

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v13, 0x13c

    .line 460
    invoke-static/range {v12 .. v17}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    goto :goto_d

    .line 461
    :cond_22
    sput-boolean v19, Lcom/umeng/ccg/d;->m:Z

    .line 462
    const-string v0, "PO: cloud switch is OFF."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 463
    :cond_23
    sput-boolean v19, Lcom/umeng/ccg/d;->m:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_d

    .line 464
    :catchall_1
    :try_start_a
    sput-boolean v19, Lcom/umeng/ccg/d;->m:Z

    goto :goto_d

    .line 465
    :cond_24
    invoke-static/range {v18 .. v18}, Lcom/umeng/ccg/CcgAgent;->notifyConfigReady(Lorg/json/JSONObject;)V

    .line 466
    :cond_25
    :goto_d
    invoke-direct {v1}, Lcom/umeng/ccg/d;->h()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 467
    const-string v0, "--->>> \u68c0\u6d4b\u5230\u96c6\u6210\u7684SDK\u7c7b\u578b\u96c6\u5408\u53d1\u751f\u53d8\u5316\uff0c\u53d1\u8d77\u4e91\u914d\u53c2\u6570\u62c9\u53d6\u8bf7\u6c42(\u8bbe\u7f6e\u672c\u5730should fetch\u6807\u5fd7)."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v11}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-direct {v1, v9}, Lcom/umeng/ccg/d;->a(Z)V

    .line 470
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 471
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v3

    const/16 v4, 0x65

    .line 472
    invoke-static {v2, v4, v3, v0}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;)V

    goto :goto_e

    .line 473
    :cond_26
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/umeng/ccg/d;->c(Landroid/content/Context;)V

    .line 474
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v11}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manual check iucc value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-direct {v1, v0}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 477
    :catchall_2
    :goto_e
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 478
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/umeng/analytics/pro/bz;->n:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 480
    const-string v0, "PI: flag file exist, start process."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 482
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v3, 0x136

    .line 483
    invoke-static/range {v2 .. v7}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    goto/16 :goto_12

    :pswitch_12
    move/from16 v19, v4

    const/16 v18, 0x0

    .line 484
    invoke-static {}, Lcom/umeng/ccg/CcgAgent;->getCollectItemList()[Ljava/lang/String;

    move-result-object v0

    .line 485
    array-length v2, v0

    :goto_f
    if-ge v4, v2, :cond_27

    aget-object v3, v0, v4

    .line 486
    invoke-static {v3}, Lcom/umeng/ccg/CcgAgent;->getForbidSdkArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 487
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[forbid_sdk] \u91c7\u96c6\u9879: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; \u503c: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 488
    :cond_27
    const-string v0, "[workEvent]: recv LOAD_CONFIG msg."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :try_start_b
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/ccg/d;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v14, :cond_28

    .line 490
    :try_start_c
    invoke-direct {v1, v14}, Lcom/umeng/ccg/d;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 491
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 492
    :cond_28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 493
    :try_start_d
    invoke-virtual {v0, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v14, :cond_29

    .line 494
    :goto_10
    invoke-virtual {v0, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 495
    :catchall_3
    :cond_29
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x6a

    .line 496
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v4

    .line 497
    invoke-static {v2, v3, v4, v0}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;)V

    goto/16 :goto_12

    :catchall_4
    move-object/from16 v14, v18

    .line 498
    :catchall_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 499
    :try_start_e
    invoke-virtual {v0, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v14, :cond_29

    goto :goto_10

    .line 500
    :pswitch_13
    const-string v0, "[workEvent]: recv FETCH_FAILED msg."

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_14
    move/from16 v19, v4

    .line 501
    const-string v2, "[workEvent]: recv FETCH_SUCCESS msg."

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_35

    .line 503
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_35

    .line 504
    :try_start_f
    check-cast v0, Lorg/json/JSONObject;

    .line 505
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 506
    const-string v4, "sourceIucc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_35

    .line 507
    invoke-direct {v1}, Lcom/umeng/ccg/d;->j()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 508
    const-string v4, "--->>> \u6210\u529f\u62c9\u53d6\u4e91\u914d\u53c2\u6570\u540e\uff0c\u68c0\u6d4b\u5230should fetch\u6807\u5fd7\uff0c\u6e05\u9664\u6b64\u6807\u5fd7\u3002\u66f4\u65b0SDK\u7c7b\u578b\u96c6\u7f13\u5b58\u503c"

    invoke-static {v10, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-direct {v1}, Lcom/umeng/ccg/d;->i()V

    move/from16 v4, v19

    .line 510
    invoke-direct {v1, v4}, Lcom/umeng/ccg/d;->a(Z)V

    .line 511
    :cond_2a
    invoke-direct {v1, v2, v3, v0}, Lcom/umeng/ccg/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 512
    invoke-static {v3}, Lcom/umeng/ccg/CcgAgent;->notifyConfigChanged(Lorg/json/JSONObject;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto/16 :goto_12

    :pswitch_15
    const/16 v18, 0x0

    .line 513
    const-string v2, "[workEvent]: recv FETCH_RESPONSE msg."

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iput-object v11, v1, Lcom/umeng/ccg/d;->k:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 515
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_2c

    .line 516
    :try_start_10
    check-cast v0, Lorg/json/JSONObject;

    .line 517
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 518
    invoke-direct {v1, v2}, Lcom/umeng/ccg/d;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 519
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 520
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v3

    const/16 v4, 0x67

    .line 521
    invoke-static {v2, v4, v3, v0}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;)V

    return-void

    .line 522
    :cond_2b
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 523
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v2

    const/16 v3, 0x68

    move-object/from16 v4, v18

    .line 524
    invoke-static {v0, v3, v2, v4}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    return-void

    .line 525
    :cond_2c
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x68

    .line 526
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v3

    const/4 v4, 0x0

    .line 527
    invoke-static {v0, v2, v3, v4}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;)V

    return-void

    :pswitch_16
    if-eqz v0, :cond_35

    .line 528
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_35

    .line 529
    check-cast v0, Ljava/lang/String;

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[workEvent]: recv FETCH_NEW_CONFIG msg. source iucc is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 532
    :try_start_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[imprint] send request. body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v4, Lcom/umeng/analytics/pro/as;

    const-string v5, "https://ucc.umeng.com/v2/inn/fetch"

    invoke-direct {v4, v5, v2, v0}, Lcom/umeng/analytics/pro/as;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6, v0}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 534
    :cond_2d
    invoke-direct {v1}, Lcom/umeng/ccg/d;->j()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 535
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/umeng/ccg/d;->c(Landroid/content/Context;)V

    .line 536
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v11}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manual check iucc value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-direct {v1, v0}, Lcom/umeng/ccg/d;->a(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto/16 :goto_12

    :cond_2e
    const-wide/16 v16, 0x3e8

    .line 539
    iget-boolean v2, v1, Lcom/umeng/ccg/d;->l:Z

    if-nez v2, :cond_2f

    goto/16 :goto_12

    :cond_2f
    if-eqz v0, :cond_35

    .line 540
    instance-of v2, v0, Lcom/umeng/ccg/d$a;

    if-eqz v2, :cond_35

    .line 541
    :try_start_12
    check-cast v0, Lcom/umeng/ccg/d$a;

    .line 542
    invoke-virtual {v0}, Lcom/umeng/ccg/d$a;->a()J

    move-result-wide v2

    .line 543
    invoke-virtual {v0}, Lcom/umeng/ccg/d$a;->b()J

    move-result-wide v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_30

    goto/16 :goto_12

    :cond_30
    sub-long v7, v4, v2

    cmp-long v0, v7, v16

    .line 544
    const-string v9, "; \u505c\u7559: "

    const-string v11, "; ts2 = "

    const-string v12, "--->>> APMode: \u4e0a\u62a5\u9000\u51fa\u98de\u884c\u6a21\u5f0f\u4e8b\u4ef6\uff1ats1 = "

    if-ltz v0, :cond_31

    .line 545
    :try_start_13
    div-long v7, v7, v16

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\u79d2"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 547
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\u6beb\u79d2"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_11
    const-string v0, "[\"uapp\"]"

    .line 549
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v0, "uapp"

    iget-boolean v9, v1, Lcom/umeng/ccg/d;->l:Z

    const/4 v11, 0x4

    invoke-static {v7, v11, v8, v0, v9}, Lcom/umeng/analytics/pro/ap;->a(Landroid/content/Context;ILorg/json/JSONArray;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 550
    const-string v7, "ts1"

    invoke-virtual {v0, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 551
    const-string v2, "ts2"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APMode event param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v2, Lcom/umeng/analytics/pro/ar;

    invoke-direct {v2, v6, v0}, Lcom/umeng/analytics/pro/ar;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x0

    invoke-static {v2, v5, v6, v0}, Lcom/umeng/analytics/pro/aw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_12

    .line 554
    :cond_32
    iget-boolean v0, v1, Lcom/umeng/ccg/d;->l:Z

    if-nez v0, :cond_33

    goto :goto_12

    .line 555
    :cond_33
    :try_start_14
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    .line 556
    invoke-static {v11}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isAirplaneModeOn(Landroid/content/Context;)I

    move-result v0

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 558
    invoke-static {v11}, Lcom/umeng/analytics/pro/av;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_35

    const/4 v6, 0x0

    .line 559
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 560
    const-string v7, "last_ap_time"

    const-wide/16 v12, 0x0

    invoke-interface {v2, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    if-eq v6, v0, :cond_35

    .line 561
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--->>> APMode value changed, current value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "; new value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 563
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 564
    const-string v3, "last_ap_time"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_34
    if-ne v6, v9, :cond_35

    if-nez v0, :cond_35

    .line 566
    new-instance v14, Lcom/umeng/ccg/d$a;

    move-wide v2, v7

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lcom/umeng/ccg/d$a;-><init>(Lcom/umeng/ccg/d;JJ)V

    move-object v14, v0

    .line 567
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    move-result-object v13

    const-wide/16 v15, 0x0

    const/16 v12, 0x192

    .line 568
    invoke-static/range {v11 .. v16}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :catchall_6
    :cond_35
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x136
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/umeng/ccg/d;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_0

    .line 5
    monitor-exit p0

    return-object v0

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 8
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    move-result-object v1

    .line 9
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    :try_start_3
    invoke-static {p1}, Lcom/umeng/analytics/pro/at;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-object p1, v0

    :catchall_2
    :try_start_4
    invoke-static {p1}, Lcom/umeng/analytics/pro/at;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 11
    :catchall_3
    :goto_0
    monitor-exit p0

    return-object v0
.end method
