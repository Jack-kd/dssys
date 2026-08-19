.class public Lcom/baidu/mobads/sdk/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "none"

.field public static final b:Ljava/lang/String; = "text"

.field public static final c:Ljava/lang/String; = "static_image"

.field public static final d:Ljava/lang/String; = "gif"

.field public static final e:Ljava/lang/String; = "rich_media"

.field public static final f:Ljava/lang/String; = "html"

.field public static final g:Ljava/lang/String; = "hybrid"

.field public static final h:Ljava/lang/String; = "video"

.field public static final i:Ljava/lang/String; = "live"

.field private static final j:J = 0x1ab3f0L


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:Ljava/lang/String;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private S:Lorg/json/JSONObject;

.field private T:J

.field private U:J

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Lorg/json/JSONObject;

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ah:I

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:I

.field private al:I

.field private am:I

.field private an:Lorg/json/JSONObject;

.field private ao:Lorg/json/JSONObject;

.field private ap:I

.field private aq:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:J

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/baidu/mobads/sdk/internal/a;->t:I

    .line 6
    .line 7
    const-string v0, "none"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->Q:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ah:I

    .line 13
    .line 14
    iput v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ak:I

    .line 15
    .line 16
    iput v0, p0, Lcom/baidu/mobads/sdk/internal/a;->al:I

    .line 17
    .line 18
    iput v0, p0, Lcom/baidu/mobads/sdk/internal/a;->am:I

    .line 19
    .line 20
    return-void
.end method

.method private static a(Lorg/json/JSONObject;II)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 149
    :try_start_0
    const-string v1, "st_op"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 150
    const-string v1, "tp_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "opt_style_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    .line 152
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    array-length v1, p0

    if-lez v1, :cond_0

    .line 154
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 155
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/baidu/mobads/sdk/internal/bv;->d(Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1

    move p1, v0

    goto :goto_1

    .line 157
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/a;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    const/16 p0, 0x2a

    if-ne p1, p0, :cond_3

    const/16 p1, 0x29

    :cond_3
    return p1
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/mobads/sdk/internal/a;
    .locals 18

    move-object/from16 v1, p0

    .line 2
    const-string v2, "type"

    const-string v0, "marketing"

    const-string v3, "cta"

    const-string v4, ""

    if-eqz v1, :cond_13

    .line 3
    new-instance v6, Lcom/baidu/mobads/sdk/internal/a;

    invoke-direct {v6}, Lcom/baidu/mobads/sdk/internal/a;-><init>()V

    .line 4
    iput-object v1, v6, Lcom/baidu/mobads/sdk/internal/a;->ao:Lorg/json/JSONObject;

    .line 5
    const-string v7, "remoteParams"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mobads/sdk/internal/a;->S:Lorg/json/JSONObject;

    .line 6
    const-string v7, "tit"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mobads/sdk/internal/a;->k:Ljava/lang/String;

    .line 7
    const-string v7, "desc"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mobads/sdk/internal/a;->l:Ljava/lang/String;

    .line 8
    const-string v7, "icon"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mobads/sdk/internal/a;->m:Ljava/lang/String;

    .line 9
    const-string v7, "w_picurl"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mobads/sdk/internal/a;->n:Ljava/lang/String;

    .line 10
    const-string v7, "w"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mobads/sdk/internal/a;->o:I

    .line 11
    const-string v7, "h"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mobads/sdk/internal/a;->p:I

    .line 12
    const-string v7, "appname"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mobads/sdk/internal/a;->q:Ljava/lang/String;

    .line 13
    const-string v7, "adLogo"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/baidu/mobads/sdk/internal/a;->W:Ljava/lang/String;

    .line 14
    const-string v8, "baiduLogo"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/baidu/mobads/sdk/internal/a;->X:Ljava/lang/String;

    .line 15
    const-string v9, "region_click"

    const/4 v10, 0x2

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v6, Lcom/baidu/mobads/sdk/internal/a;->ad:I

    .line 16
    const-string v9, "dl_dialog"

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v6, Lcom/baidu/mobads/sdk/internal/a;->ae:I

    .line 17
    const-string v9, "btn"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/baidu/mobads/sdk/internal/a;->ab:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 18
    :try_start_0
    const-string v12, "control_flags"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 19
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "gjurl"

    const-string v15, "gjtxt"

    const-string v5, "gjico"

    if-nez v13, :cond_0

    .line 20
    :try_start_1
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    const-string v12, "innovate"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 22
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 23
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/baidu/mobads/sdk/internal/a;->Y:Ljava/lang/String;

    .line 25
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/baidu/mobads/sdk/internal/a;->Z:Ljava/lang/String;

    .line 26
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/baidu/mobads/sdk/internal/a;->aa:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 27
    :cond_0
    :goto_0
    const-string v12, "cloud_control"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 28
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 29
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 31
    invoke-virtual {v13, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 32
    iput-object v4, v6, Lcom/baidu/mobads/sdk/internal/a;->ab:Ljava/lang/String;

    .line 33
    :cond_1
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 34
    invoke-virtual {v13, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 35
    const-string v0, "marketing_logo"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    move v3, v11

    :goto_1
    if-ge v3, v10, :cond_4

    .line 37
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    .line 38
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 39
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v12, v6, Lcom/baidu/mobads/sdk/internal/a;->Y:Ljava/lang/String;

    invoke-virtual {v10, v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/baidu/mobads/sdk/internal/a;->Y:Ljava/lang/String;

    .line 41
    iget-object v12, v6, Lcom/baidu/mobads/sdk/internal/a;->Z:Ljava/lang/String;

    invoke-virtual {v10, v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/baidu/mobads/sdk/internal/a;->Z:Ljava/lang/String;

    .line 42
    iget-object v12, v6, Lcom/baidu/mobads/sdk/internal/a;->aa:Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/baidu/mobads/sdk/internal/a;->aa:Ljava/lang/String;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x2

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 43
    iput-object v4, v6, Lcom/baidu/mobads/sdk/internal/a;->Y:Ljava/lang/String;

    .line 44
    iput-object v4, v6, Lcom/baidu/mobads/sdk/internal/a;->Z:Ljava/lang/String;

    .line 45
    iput-object v4, v6, Lcom/baidu/mobads/sdk/internal/a;->aa:Ljava/lang/String;

    .line 46
    :cond_4
    const-string v0, "btn_style"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 48
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 50
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 51
    invoke-virtual {v3, v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->af:I

    .line 52
    const-string v0, "colors"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Lcom/baidu/mobads/sdk/internal/a;->ag:Ljava/util/List;

    move v3, v11

    .line 55
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 56
    iget-object v5, v6, Lcom/baidu/mobads/sdk/internal/a;->ag:Ljava/util/List;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 57
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 58
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    :cond_6
    :goto_6
    const-string v0, "monitors"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->ac:Lorg/json/JSONObject;

    .line 60
    const-string v0, "sz"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v6, Lcom/baidu/mobads/sdk/internal/a;->r:J

    .line 61
    const-string v0, "auto_play"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->s:I

    .line 62
    const-string v0, "auto_play_non_wifi"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->t:I

    .line 63
    const-string v0, "pk"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->y:Ljava/lang/String;

    .line 64
    const-string v0, "act"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->H:I

    .line 65
    const-string v0, "apo"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->I:Ljava/lang/String;

    .line 66
    const-string v0, "bidlayer"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->u:Ljava/lang/String;

    .line 67
    const-string v0, "ads_bidlayer"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->v:Ljava/lang/String;

    .line 68
    const-string v0, "enc_bid_price"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->w:Ljava/lang/String;

    .line 69
    const-string v0, "author_display_name"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->x:Ljava/lang/String;

    .line 70
    const-string v0, "container_width"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->J:I

    .line 71
    const-string v0, "container_height"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->K:I

    .line 72
    const-string v0, "size_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->L:I

    .line 73
    const-string v0, "style_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->M:I

    const/16 v3, 0x1d

    .line 74
    invoke-static {v1, v0, v3}, Lcom/baidu/mobads/sdk/internal/a;->a(Lorg/json/JSONObject;II)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->N:I

    .line 75
    const-string v0, "vurl"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->z:Ljava/lang/String;

    .line 76
    const-string v0, "duration"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->O:I

    .line 77
    const-string v0, "live_flv"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->A:Ljava/lang/String;

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 79
    const-string v0, "live_hls"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->A:Ljava/lang/String;

    .line 80
    :cond_7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->P:Ljava/lang/String;

    .line 81
    const-string v2, "html"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->B:Ljava/lang/String;

    .line 82
    const-string v0, "app_version"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->D:Ljava/lang/String;

    .line 83
    const-string v0, "publisher"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->C:Ljava/lang/String;

    .line 84
    const-string v0, "permission_link"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->G:Ljava/lang/String;

    .line 85
    const-string v0, "privacy_link"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->E:Ljava/lang/String;

    .line 86
    const-string v0, "function_link"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->F:Ljava/lang/String;

    .line 87
    const-string v0, "media_player_render"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->ah:I

    .line 88
    const-string v0, "qk"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->ai:Ljava/lang/String;

    .line 89
    const-string v0, "buyer"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->aj:Ljava/lang/String;

    .line 90
    const-string v0, "is_ecafd_direct_ad"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->ak:I

    .line 91
    const-string v0, "ecafd_promote_bind"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->al:I

    .line 92
    const-string v0, "ecafd_promote_order"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->am:I

    .line 93
    const-string v0, "act_time"

    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/baidu/mobads/sdk/internal/a;->ap:I

    .line 94
    const-string v0, "act_text"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->aq:Ljava/lang/String;

    .line 95
    :try_start_2
    const-string v0, "media_key"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 97
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v6, Lcom/baidu/mobads/sdk/internal/a;->an:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    .line 98
    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/az;->b(Ljava/lang/Throwable;)V

    .line 99
    :cond_8
    :goto_7
    :try_start_3
    const-string v0, "morepics"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 100
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/baidu/mobads/sdk/internal/a;->R:Ljava/util/List;

    .line 102
    :goto_8
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_9

    .line 103
    iget-object v1, v6, Lcom/baidu/mobads/sdk/internal/a;->R:Ljava/util/List;

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 104
    :catch_1
    :cond_9
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 105
    iput-object v2, v6, Lcom/baidu/mobads/sdk/internal/a;->Q:Ljava/lang/String;

    goto/16 :goto_a

    .line 106
    :cond_a
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->P:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 107
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    iput-object v1, v6, Lcom/baidu/mobads/sdk/internal/a;->P:Ljava/lang/String;

    goto/16 :goto_a

    .line 109
    :cond_b
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->P:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 110
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 111
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->n:Ljava/lang/String;

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_c

    .line 115
    iget-object v1, v6, Lcom/baidu/mobads/sdk/internal/a;->n:Ljava/lang/String;

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_c
    move-object v0, v4

    .line 119
    :goto_9
    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 120
    const-string v0, "gif"

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->Q:Ljava/lang/String;

    goto :goto_a

    .line 121
    :cond_d
    const-string v0, "static_image"

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->Q:Ljava/lang/String;

    goto :goto_a

    .line 122
    :cond_e
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->P:Ljava/lang/String;

    const-string v1, "rm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 123
    const-string v0, "rich_media"

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->Q:Ljava/lang/String;

    goto :goto_a

    .line 124
    :cond_f
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->P:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 125
    iput-object v1, v6, Lcom/baidu/mobads/sdk/internal/a;->Q:Ljava/lang/String;

    goto :goto_a

    .line 126
    :cond_10
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->P:Ljava/lang/String;

    const-string v1, "live"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 127
    iput-object v1, v6, Lcom/baidu/mobads/sdk/internal/a;->Q:Ljava/lang/String;

    .line 128
    :cond_11
    :goto_a
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->S:Lorg/json/JSONObject;

    if-eqz v0, :cond_12

    .line 129
    const-string v1, "createTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/baidu/mobads/sdk/internal/a;->T:J

    .line 130
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->S:Lorg/json/JSONObject;

    const-string v1, "expireTime"

    const-wide/32 v2, 0x1ab3f0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/baidu/mobads/sdk/internal/a;->U:J

    .line 131
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->S:Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->aO:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->W:Ljava/lang/String;

    .line 132
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->S:Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobads/sdk/internal/z;->aP:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->X:Ljava/lang/String;

    .line 133
    iget-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->S:Lorg/json/JSONObject;

    const-string v1, "uniqueId"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mobads/sdk/internal/a;->V:Ljava/lang/String;

    :cond_12
    return-object v6

    :cond_13
    const/16 v16, 0x0

    return-object v16
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/internal/a;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 146
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobads/sdk/internal/a;->a(Lorg/json/JSONObject;)Lcom/baidu/mobads/sdk/internal/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 148
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq v0, p0, :cond_1

    const/16 v0, 0x20

    if-eq v0, p0, :cond_1

    const/16 v0, 0x26

    if-eq v0, p0, :cond_1

    const/16 v0, 0x27

    if-eq v0, p0, :cond_1

    const/16 v0, 0x28

    if-eq v0, p0, :cond_1

    const/16 v0, 0x2a

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->v:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->v:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->u:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ap:I

    .line 2
    .line 3
    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->aq:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->C:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->F:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public K()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/mobads/sdk/internal/a;->U:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->R:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->V:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public N()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->S:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->Y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->Z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->aa:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ab:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ab:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public S()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->af:I

    .line 2
    .line 3
    return v0
.end method

.method public T()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ag:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public U()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ac:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public V()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ad:I

    .line 2
    .line 3
    return v0
.end method

.method public W()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ae:I

    .line 2
    .line 3
    return v0
.end method

.method public X()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ah:I

    .line 2
    .line 3
    return v0
.end method

.method public Y()Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "uniqueId"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/a;->V:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "tit"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/a;->k:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "desc"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/a;->l:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "pk"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/a;->y:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "appname"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/a;->q:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "act"

    .line 42
    .line 43
    iget v2, p0, Lcom/baidu/mobads/sdk/internal/a;->H:I

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :catchall_0
    const/4 v0, 0x0

    .line 50
    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ai:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->an:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ao:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 136
    const-string v2, "apo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/a;->an:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 139
    :cond_2
    const-string v2, "fallback"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 141
    :cond_3
    const-string v2, "page"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ao:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 144
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method public aa()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->aj:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->aj:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/a;->aj:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-wide/32 v3, 0x186a0

    .line 22
    .line 23
    .line 24
    cmp-long v0, v0, v3

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x5

    .line 29
    if-le v2, v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->aj:Ljava/lang/String;

    .line 32
    .line 33
    add-int/lit8 v1, v2, -0x4

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/az;->b(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const-string v0, ""

    .line 45
    .line 46
    return-object v0
.end method

.method public ab()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->ak:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->al:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public ac()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->am:I

    .line 2
    .line 3
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->W:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->X:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/mobads/sdk/internal/a;->r:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->H:I

    .line 2
    .line 3
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->J:I

    .line 2
    .line 3
    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->K:I

    .line 2
    .line 3
    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->L:I

    .line 2
    .line 3
    return v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->M:I

    .line 2
    .line 3
    return v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->N:I

    .line 2
    .line 3
    return v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/mobads/sdk/internal/a;->O:I

    .line 2
    .line 3
    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/a;->Q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/mobads/sdk/internal/a;->T:J

    .line 2
    .line 3
    return-wide v0
.end method
