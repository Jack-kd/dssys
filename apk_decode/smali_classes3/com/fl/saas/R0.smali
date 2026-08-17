.class public Lcom/fl/saas/R0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/fl/saas/R0;


# instance fields
.field private a:J


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

.method public static a()Lcom/fl/saas/R0;
    .locals 2

    .line 4
    sget-object v0, Lcom/fl/saas/R0;->b:Lcom/fl/saas/R0;

    if-nez v0, :cond_0

    const-class v0, Lcom/fl/saas/R0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/fl/saas/R0;

    invoke-direct {v1}, Lcom/fl/saas/R0;-><init>()V

    sput-object v1, Lcom/fl/saas/R0;->b:Lcom/fl/saas/R0;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/fl/saas/R0;->b:Lcom/fl/saas/R0;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/fl/saas/j;
    .locals 14

    .line 3
    new-instance v0, Lcom/fl/saas/j;

    invoke-direct {v0}, Lcom/fl/saas/j;-><init>()V

    iget-wide v1, p0, Lcom/fl/saas/R0;->a:J

    iput-wide v1, v0, Lcom/fl/saas/j;->l:J

    const-string v1, "adv_name"

    const-string v2, "\u5e7f\u544a"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->y:Ljava/lang/String;

    const-string v1, "ac_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->w0:Ljava/lang/String;

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/fl/saas/j;->d:I

    const-string v1, "landing_page"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    const-string v1, "deeplink_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    const-string v1, "download_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    const-string v1, "app_package"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->A0:Ljava/lang/String;

    const-string v1, "app_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->C0:Ljava/lang/String;

    const-string v1, "advertiser_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->D0:Ljava/lang/String;

    const-string v1, "app_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->E0:Ljava/lang/String;

    const-string v1, "package_size_bytes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->F0:Ljava/lang/String;

    const-string v1, "permissions_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->G0:Ljava/lang/String;

    const-string v1, "app_intro_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->J0:Ljava/lang/String;

    const-string v1, "ad_logo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->B0:Ljava/lang/String;

    const-string v1, "privacy_agreement"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->H0:Ljava/lang/String;

    const-string v1, "permission_list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->I0:Ljava/lang/String;

    :cond_0
    const-string v1, "wx_app_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->A1:Ljava/lang/String;

    const-string v1, "wx_mini_pro_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->B1:Ljava/lang/String;

    const-string v1, "wx_mini_pro_path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->C1:Ljava/lang/String;

    const-string v1, "validityTime"

    const/16 v2, 0x708

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/fl/saas/j;->D1:I

    const-string v1, "creative"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/j$c;

    invoke-direct {v2}, Lcom/fl/saas/j$c;-><init>()V

    const-string v3, "height"

    const-string v4, "width"

    const-string v5, "url"

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    const-string v7, "cid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/fl/saas/j;->z:Ljava/lang/String;

    iput-object v7, v2, Lcom/fl/saas/j$c;->a:Ljava/lang/String;

    const-string v7, "ctype"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/fl/saas/j$c;->b:I

    const-string v7, "title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/fl/saas/j$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/fl/saas/j;->o0:Ljava/lang/String;

    const-string v7, "desc"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/fl/saas/j$c;->d:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/fl/saas/j;->s1:Ljava/lang/String;

    const-string v7, "button"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/fl/saas/j$c;->e:Ljava/lang/String;

    const-string v7, "brand"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/fl/saas/j$c;->f:Ljava/lang/String;

    const-string v7, "video"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "imgs"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/fl/saas/j$d;

    invoke-direct {v10}, Lcom/fl/saas/j$d;-><init>()V

    if-eqz v8, :cond_2

    move v11, v6

    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_2

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/fl/saas/j$d;->a:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v10, Lcom/fl/saas/j$d;->b:I

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v10, Lcom/fl/saas/j$d;->c:I

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_1

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v0, Lcom/fl/saas/j;->v1:I

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/fl/saas/j;->w1:I

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    iput-object v9, v2, Lcom/fl/saas/j$c;->h:Ljava/util/List;

    const-string v8, "icon"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v8, Lcom/fl/saas/j$d;

    invoke-direct {v8}, Lcom/fl/saas/j$d;-><init>()V

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/fl/saas/j$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/fl/saas/j$d;->b:I

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/fl/saas/j$d;->c:I

    iput-object v8, v2, Lcom/fl/saas/j$c;->i:Lcom/fl/saas/j$d;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fl/saas/j;->x1:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :cond_4
    :goto_1
    new-instance v1, Lcom/fl/saas/j$e;

    invoke-direct {v1}, Lcom/fl/saas/j$e;-><init>()V

    if-eqz v7, :cond_6

    const-string v8, "video_url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/fl/saas/j$e;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/fl/saas/j$e;->b:I

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/fl/saas/j$e;->c:I

    const-string v8, "duration"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/fl/saas/j$e;->d:I

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/fl/saas/j;->X1:I

    const-string v8, "size"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/fl/saas/j$e;->e:J

    const-string v8, "end_url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/fl/saas/j$e;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/fl/saas/j;->u1:Ljava/lang/String;

    const-string v8, "cover"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v8, Lcom/fl/saas/j$d;

    invoke-direct {v8}, Lcom/fl/saas/j$d;-><init>()V

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/fl/saas/j$d;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v8, Lcom/fl/saas/j$d;->b:I

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v8, Lcom/fl/saas/j$d;->c:I

    iput-object v8, v1, Lcom/fl/saas/j$e;->f:Lcom/fl/saas/j$d;

    :cond_5
    iput-object v1, v2, Lcom/fl/saas/j$c;->g:Lcom/fl/saas/j$e;

    :cond_6
    iput-object v2, v0, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    new-instance v1, Lcom/fl/saas/j$a;

    invoke-direct {v1}, Lcom/fl/saas/j$a;-><init>()V

    const-string v2, "ad_interactio_mode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "normalclick"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/fl/saas/j$a;->a:Ljava/lang/String;

    const-string v3, "shake"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/fl/saas/j$a;->b:Ljava/lang/String;

    const-string v3, "slideclick"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/fl/saas/j$a;->c:Ljava/lang/String;

    const-string v3, "twist"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fl/saas/j$a;->d:Ljava/lang/String;

    :cond_7
    iput-object v1, v0, Lcom/fl/saas/j;->l2:Lcom/fl/saas/j$a;

    const-string v1, "notice_success_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_8

    move v2, v6

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, v0, Lcom/fl/saas/j;->k1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    const-string v1, "notice_failed_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9

    move v2, v6

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget-object v3, v0, Lcom/fl/saas/j;->l1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    const-string v1, "imp_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_a

    move v2, v6

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    iget-object v3, v0, Lcom/fl/saas/j;->Q0:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    const-string v1, "click_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_b

    move v2, v6

    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_b

    iget-object v3, v0, Lcom/fl/saas/j;->R0:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    const-string v1, "dpsuccess_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_c

    move v2, v6

    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_c

    iget-object v3, v0, Lcom/fl/saas/j;->S0:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    const-string v1, "video_end_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    move v2, v6

    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_d

    iget-object v3, v0, Lcom/fl/saas/j;->T0:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    const-string v1, "download_start_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_e

    move v2, v6

    :goto_8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_e

    iget-object v3, v0, Lcom/fl/saas/j;->U0:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    const-string v1, "download_end_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_f

    move v2, v6

    :goto_9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_f

    iget-object v3, v0, Lcom/fl/saas/j;->V0:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    const-string v1, "install_start_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_10

    move v2, v6

    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_10

    iget-object v3, v0, Lcom/fl/saas/j;->W0:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    const-string v1, "install_end_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_11

    move v2, v6

    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_11

    iget-object v3, v0, Lcom/fl/saas/j;->X0:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_11
    const-string v1, "open_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_12

    move v2, v6

    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_12

    iget-object v3, v0, Lcom/fl/saas/j;->Y0:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_12
    const-string v1, "video_view_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_13

    move v2, v6

    :goto_d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_13

    iget-object v3, v0, Lcom/fl/saas/j;->Z0:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_13
    const-string v1, "close"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_14

    move v2, v6

    :goto_e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_14

    iget-object v3, v0, Lcom/fl/saas/j;->a1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_14
    const-string v1, "video_start_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_15

    move v2, v6

    :goto_f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_15

    iget-object v3, v0, Lcom/fl/saas/j;->b1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_15
    const-string v1, "video_pause_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_16

    move v2, v6

    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_16

    iget-object v3, v0, Lcom/fl/saas/j;->f1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_16
    const-string v1, "video_fullscreen_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_17

    move v2, v6

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_17

    iget-object v3, v0, Lcom/fl/saas/j;->g1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_17
    const-string v1, "video_continue_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_18

    move v2, v6

    :goto_12
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_18

    iget-object v3, v0, Lcom/fl/saas/j;->h1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_18
    const-string v1, "video_skip_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_19

    move v2, v6

    :goto_13
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_19

    iget-object v3, v0, Lcom/fl/saas/j;->i1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_19
    const-string v1, "video_mute_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1a

    move v2, v6

    :goto_14
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1a

    iget-object v3, v0, Lcom/fl/saas/j;->j1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1a
    const-string v1, "video_first_quartile_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1b

    move v2, v6

    :goto_15
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1b

    iget-object v3, v0, Lcom/fl/saas/j;->c1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1b
    const-string v1, "video_midpoint_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1c

    move v2, v6

    :goto_16
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1c

    iget-object v3, v0, Lcom/fl/saas/j;->d1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_1c
    const-string v1, "video_third_quartile_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1d

    move v2, v6

    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    iget-object v3, v0, Lcom/fl/saas/j;->e1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_1d
    const-string v1, "app_installed_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1e

    move v2, v6

    :goto_18
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1e

    iget-object v3, v0, Lcom/fl/saas/j;->m1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_1e
    const-string v1, "dp_attempt_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1f

    move v2, v6

    :goto_19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1f

    iget-object v3, v0, Lcom/fl/saas/j;->n1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_1f
    const-string v1, "dpfail_notice_urls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_20

    move v2, v6

    :goto_1a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_20

    iget-object v3, v0, Lcom/fl/saas/j;->o1:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_20
    const-string v1, "is_black"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/fl/saas/j;->i0:I

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 2

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "link_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "id"

    invoke-static {p2}, Lcom/fl/saas/adx/util/DeviceUtil;->getReqID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    const-string v1, "29109"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "secure"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->isHttpSupported()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "place_id"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mit"

    invoke-static {}, Lcom/fl/saas/z;->c()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "miv"

    invoke-static {}, Lcom/fl/saas/z;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "app"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getAppInfo()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDeviceInfo()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_hot_start"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/fl/saas/R0;Ljava/lang/String;Lcom/fl/saas/n0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/fl/saas/R0;->a(Ljava/lang/String;Lcom/fl/saas/n0;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/fl/saas/n0;Ljava/lang/String;)V
    .locals 75

    move-object/from16 v1, p2

    const-string v0, "A"

    const-string v2, "S"

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x4fb1

    if-eqz v3, :cond_1

    const-string v0, "return null-string response"

    invoke-static {v4, v0}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/fl/saas/n0;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/fl/saas/l0;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v5, "code"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "req_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-ne v5, v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lcom/fl/saas/n0;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/fl/saas/adx/util/DeviceUtil;->getReqID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "ads"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v9, "adv_id"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x1

    if-eqz v8, :cond_3

    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_3

    move v13, v10

    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v15, p0

    :try_start_2
    invoke-direct {v15, v14}, Lcom/fl/saas/R0;->a(Lorg/json/JSONObject;)Lcom/fl/saas/j;

    move-result-object v14

    iput v9, v14, Lcom/fl/saas/j;->a:I

    iput-object v7, v14, Lcom/fl/saas/j;->g:Ljava/lang/String;

    move-object/from16 v6, p3

    iput-object v6, v14, Lcom/fl/saas/j;->i:Ljava/lang/String;

    iput-object v5, v14, Lcom/fl/saas/j;->r:Ljava/lang/String;

    const-string v10, "auto_play_type"

    invoke-virtual {v3, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v14, Lcom/fl/saas/j;->K0:I

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v6, -0x1

    const/4 v10, 0x0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    goto/16 :goto_6

    :cond_3
    move-object/from16 v15, p0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "adInfoList is empty"

    invoke-static {v4, v0}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v5, "draw_type"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "video_orientation"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v6, "is_muted"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "video_auto_play"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "template_type_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "left_right_margin"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v13, "top_bottom_margin"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "click_callback_ratio"

    move/from16 p3, v5

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-virtual {v3, v14, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v14, "server_verify"

    const/4 v12, 0x0

    invoke-virtual {v3, v14, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "server_verify_time"

    invoke-virtual {v3, v15, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const-string v12, "resp_area_ratio"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "close_button_freq"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "close_button_interval"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "display_effective_count"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    const-string v1, "is_download"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    const-string v1, "hotspot"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    const-string v1, "hotspot_type"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "sensitivity"

    move/from16 v23, v12

    const/16 v12, 0x32

    invoke-virtual {v3, v1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v12, "scale_type"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v24, v1

    const-string v1, "cp_style"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "cp_close_button"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    const-string v1, "count_down"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "button_size"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "button_position"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "close_button_type"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_close"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    const-string v1, "close_countdown"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "only_button"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "ad_size"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v33, v1

    const-string v1, "is_full_screen"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v34, v1

    const-string v1, "refresh"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v35, v1

    const-string v1, "refresh_time"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v36, v1

    const-string v1, "accept_quick_app"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v37, v1

    const-string v1, "browser_jump"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v38, v1

    const-string v1, "animate_start_time"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v39, v1

    const-string v1, "animate_time"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v40, v1

    const-string v1, "preview_mode"

    move-object/from16 v41, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "rd_type"

    move/from16 v42, v1

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "rd_countdown"

    move/from16 v43, v0

    const/16 v0, 0xf

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "rd_skip_time"

    move/from16 v44, v0

    const/4 v0, -0x1

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "rd_click_time"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "rd_auto_type"

    move/from16 v45, v0

    const/4 v0, 0x2

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "rd_auto_time"

    move/from16 v46, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "rd_autoskip_sts"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v47, v0

    const-string v0, "display_mask"

    move/from16 v48, v1

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "enable_native_wakeup"

    move/from16 v49, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v50, v1

    const-string v1, "post_click_strategy"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v51, v1

    const-string v1, "bdt"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v52, v1

    const-string v1, "skip_button"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "interstitial_bg_alpha"

    move/from16 v53, v14

    move/from16 v54, v15

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    invoke-virtual {v3, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    const-string v0, "task_type"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v55, v14

    const-string v14, "load_materials"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v57, v0

    const-string v0, "mif"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v58, v0

    const-string v0, "is_mit"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v59, v0

    const-string v0, "mip"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v15, "mit_id"

    move/from16 v60, v0

    const-string v0, ""

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "is_shake"

    move-object/from16 v61, v0

    const/4 v0, 0x1

    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const-string v0, "ac"

    move/from16 v62, v15

    const/4 v15, 0x0

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v63, v0

    const-string v0, "ac_range"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v64, v0

    const-string v0, "ac_a_x"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v65, v0

    const-string v0, "ac_a_y"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v66, v0

    const-string v0, "ac_b_x"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v67, v0

    const-string v0, "ac_b_y"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v68, v0

    const-string v0, "ac_a_s_x"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v69, v0

    const-string v0, "ac_a_s_y"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v70, v0

    const-string v0, "ac_b_s_x"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v71, v0

    const-string v0, "ac_b_s_y"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move/from16 v72, v0

    const-string v0, "ac_t"

    invoke-virtual {v3, v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_7

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fl/saas/j;

    move/from16 v73, v0

    move/from16 v0, p3

    iput v0, v15, Lcom/fl/saas/j;->L0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fl/saas/j;

    iput v7, v15, Lcom/fl/saas/j;->N0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fl/saas/j;

    iput v6, v15, Lcom/fl/saas/j;->O0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fl/saas/j;

    iput v8, v15, Lcom/fl/saas/j;->K0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fl/saas/j;

    iput v9, v15, Lcom/fl/saas/j;->t0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fl/saas/j;

    iput v10, v15, Lcom/fl/saas/j;->u0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fl/saas/j;

    iput v13, v15, Lcom/fl/saas/j;->v0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fl/saas/j;

    iput-wide v4, v15, Lcom/fl/saas/j;->j2:D

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fl/saas/j;

    iput v1, v15, Lcom/fl/saas/j;->M:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fl/saas/j;

    move/from16 p3, v0

    move/from16 v16, v1

    move/from16 v0, v53

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v15, Lcom/fl/saas/j;->p0:Z

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v15, v54

    iput v15, v1, Lcom/fl/saas/j;->q0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v54, v0

    move/from16 v0, v23

    iput v0, v1, Lcom/fl/saas/j;->I:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v23, v0

    move/from16 v0, v17

    iput v0, v1, Lcom/fl/saas/j;->J:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v17, v0

    move/from16 v0, v18

    iput v0, v1, Lcom/fl/saas/j;->K:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v18, v0

    move-object/from16 v0, v19

    iput-object v0, v1, Lcom/fl/saas/j;->L:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    iput v12, v1, Lcom/fl/saas/j;->D:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move-object/from16 v19, v0

    move/from16 v0, v25

    iput v0, v1, Lcom/fl/saas/j;->M0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v25, v0

    move-object/from16 v0, v26

    iput-object v0, v1, Lcom/fl/saas/j;->u:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move-object/from16 v26, v0

    move/from16 v0, v27

    iput v0, v1, Lcom/fl/saas/j;->v:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v27, v0

    move/from16 v0, v28

    iput v0, v1, Lcom/fl/saas/j;->w:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v28, v0

    move/from16 v0, v29

    invoke-virtual {v1, v0}, Lcom/fl/saas/j;->a(I)V

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v29, v0

    move-object/from16 v0, v41

    invoke-virtual {v1, v0}, Lcom/fl/saas/j;->a(Ljava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move-object/from16 v41, v0

    move-object/from16 v0, v30

    iput-object v0, v1, Lcom/fl/saas/j;->F:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move-object/from16 v30, v0

    move/from16 v0, v31

    iput v0, v1, Lcom/fl/saas/j;->G:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v31, v0

    move/from16 v0, v32

    iput v0, v1, Lcom/fl/saas/j;->H:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v32, v0

    move/from16 v0, v33

    iput v0, v1, Lcom/fl/saas/j;->P:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v33, v0

    move/from16 v0, v34

    iput v0, v1, Lcom/fl/saas/j;->Q:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v34, v0

    move/from16 v0, v35

    iput v0, v1, Lcom/fl/saas/j;->e0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v35, v0

    move/from16 v0, v36

    iput v0, v1, Lcom/fl/saas/j;->f0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v36, v0

    move/from16 v0, v37

    iput v0, v1, Lcom/fl/saas/j;->g0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v37, v0

    move/from16 v0, v38

    iput v0, v1, Lcom/fl/saas/j;->h0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v38, v0

    move/from16 v0, v39

    iput v0, v1, Lcom/fl/saas/j;->N:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v39, v0

    move/from16 v0, v40

    iput v0, v1, Lcom/fl/saas/j;->O:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v40, v0

    move-object/from16 v0, v21

    iput-object v0, v1, Lcom/fl/saas/j;->B:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move-object/from16 v21, v0

    move/from16 v0, v22

    iput v0, v1, Lcom/fl/saas/j;->C:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    move/from16 v22, v0

    move/from16 v0, v24

    iput v0, v1, Lcom/fl/saas/j;->x:I

    move-object/from16 v1, v20

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v24, v0

    move-object/from16 v0, v20

    check-cast v0, Lcom/fl/saas/j;

    move-object/from16 v20, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fl/saas/j;->g2:Z

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_6

    :cond_6
    move/from16 v24, v0

    move-object/from16 v20, v1

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v1, v42

    iput v1, v0, Lcom/fl/saas/j;->q2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v42, v1

    move/from16 v1, v43

    iput v1, v0, Lcom/fl/saas/j;->R:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v43, v1

    move/from16 v1, v44

    iput v1, v0, Lcom/fl/saas/j;->S:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v44, v1

    move/from16 v1, p1

    iput v1, v0, Lcom/fl/saas/j;->T:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 p1, v1

    move/from16 v1, v45

    iput v1, v0, Lcom/fl/saas/j;->U:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v45, v1

    move/from16 v1, v46

    iput v1, v0, Lcom/fl/saas/j;->V:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v46, v1

    move/from16 v1, v48

    iput v1, v0, Lcom/fl/saas/j;->W:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v48, v1

    move-object/from16 v1, v47

    iput-object v1, v0, Lcom/fl/saas/j;->X:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move-object/from16 v47, v1

    move/from16 v1, v49

    iput v1, v0, Lcom/fl/saas/j;->Y:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v49, v1

    move/from16 v1, v51

    iput v1, v0, Lcom/fl/saas/j;->l0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v51, v1

    move/from16 v1, v50

    iput v1, v0, Lcom/fl/saas/j;->m0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v50, v1

    move/from16 v1, v52

    iput v1, v0, Lcom/fl/saas/j;->n0:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    iput v14, v0, Lcom/fl/saas/j;->x2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v52, v1

    move/from16 v1, v58

    iput v1, v0, Lcom/fl/saas/j;->v2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v58, v1

    move/from16 v1, v59

    iput v1, v0, Lcom/fl/saas/j;->t2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v59, v1

    move/from16 v1, v60

    iput v1, v0, Lcom/fl/saas/j;->u2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v60, v1

    move-object/from16 v1, v61

    iput-object v1, v0, Lcom/fl/saas/j;->w2:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move-object/from16 v61, v1

    move-object/from16 v1, v57

    iput-object v1, v0, Lcom/fl/saas/j;->m:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move-object/from16 v74, v1

    move-object/from16 v57, v2

    move-wide/from16 v1, v55

    iput-wide v1, v0, Lcom/fl/saas/j;->n:D

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move-wide/from16 v55, v1

    move/from16 v1, v62

    iput v1, v0, Lcom/fl/saas/j;->z2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v2, v63

    iput v2, v0, Lcom/fl/saas/j;->A2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v62, v1

    move/from16 v1, v64

    iput v1, v0, Lcom/fl/saas/j;->B2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v64, v1

    move/from16 v1, v65

    iput v1, v0, Lcom/fl/saas/j;->C2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v65, v1

    move/from16 v1, v66

    iput v1, v0, Lcom/fl/saas/j;->D2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v66, v1

    move/from16 v1, v67

    iput v1, v0, Lcom/fl/saas/j;->E2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v67, v1

    move/from16 v1, v68

    iput v1, v0, Lcom/fl/saas/j;->F2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v68, v1

    move/from16 v1, v69

    iput v1, v0, Lcom/fl/saas/j;->G2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v69, v1

    move/from16 v1, v70

    iput v1, v0, Lcom/fl/saas/j;->H2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v70, v1

    move/from16 v1, v71

    iput v1, v0, Lcom/fl/saas/j;->I2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v71, v1

    move/from16 v1, v72

    iput v1, v0, Lcom/fl/saas/j;->J2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    move/from16 v72, v1

    move/from16 v1, v73

    iput v1, v0, Lcom/fl/saas/j;->K2:I

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    invoke-virtual {v0}, Lcom/fl/saas/j;->l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move/from16 v63, v2

    move/from16 v1, v16

    move/from16 v53, v54

    move-object/from16 v2, v57

    move-object/from16 v57, v74

    move/from16 v54, v15

    goto/16 :goto_3

    :cond_7
    move-object/from16 v1, p2

    :try_start_4
    invoke-interface {v1, v11}, Lcom/fl/saas/n0;->a(Ljava/util/List;)V

    return-void

    :cond_8
    const-string v0, "ad no fill"

    const/16 v2, 0x4fb1

    invoke-static {v2, v0}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :goto_6
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4fb1

    invoke-static {v2, v0}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/fl/saas/n0;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fl/saas/R0;->a:J

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x4fb3

    const-string p2, "placeId null"

    invoke-static {p1, p2}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/fl/saas/n0;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lcom/fl/saas/R0;->a(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/fl/saas/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/R0$a;

    invoke-direct {v1, p0, p4, p1}, Lcom/fl/saas/R0$a;-><init>(Lcom/fl/saas/R0;Lcom/fl/saas/n0;Ljava/lang/String;)V

    const-string p1, "https://s.funlinkads.com/ad/ad"

    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/fl/saas/Y;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/fl/saas/T;)V

    return-void
.end method
