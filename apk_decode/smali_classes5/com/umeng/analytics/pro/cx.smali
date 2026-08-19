.class public Lcom/umeng/analytics/pro/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/cx$b;,
        Lcom/umeng/analytics/pro/cx$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/umeng/analytics/pro/cx$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/umeng/analytics/pro/cx;
    .locals 11

    .line 5
    const-string v0, "targets"

    new-instance v1, Lcom/umeng/analytics/pro/cx;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/cx;-><init>()V

    if-eqz p0, :cond_7

    .line 6
    :try_start_0
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/cx;->a(I)V

    .line 7
    const-string v2, "msg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/cx;->a(Ljava/lang/String;)V

    .line 8
    const-string v2, "version"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/cx;->b(Ljava/lang/String;)V

    .line 9
    const-string v2, "status"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/cx;->b(I)V

    .line 10
    const-string v2, "data"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 11
    new-instance v2, Lcom/umeng/analytics/pro/cx$a;

    invoke-direct {v2}, Lcom/umeng/analytics/pro/cx$a;-><init>()V

    .line 12
    const-string v3, "delayTimes"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/cx$a;->a(Ljava/lang/String;)V

    .line 13
    const-string v3, "batchCount"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/cx$a;->b(Ljava/lang/String;)V

    .line 14
    const-string v3, "batchInterval"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/cx$a;->c(Ljava/lang/String;)V

    .line 15
    const-string v3, "actWhen"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/cx$a;->d(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 19
    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 20
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genSin()[B

    move-result-object v3

    invoke-static {p0, v3}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    move-result-object p0

    .line 21
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    .line 22
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 24
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 25
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 26
    new-instance v6, Lcom/umeng/analytics/pro/cx$b;

    invoke-direct {v6}, Lcom/umeng/analytics/pro/cx$b;-><init>()V

    .line 27
    const-string v7, "excludeWeekDays"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 28
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v0

    .line 29
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 30
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 31
    :cond_0
    invoke-virtual {v6, v8}, Lcom/umeng/analytics/pro/cx$b;->a(Ljava/util/List;)V

    .line 32
    :cond_1
    const-string v7, "excludeHours"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 33
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v0

    .line 34
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 35
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {v6, v8}, Lcom/umeng/analytics/pro/cx$b;->b(Ljava/util/List;)V

    .line 37
    :cond_3
    const-string v7, "appName"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/umeng/analytics/pro/cx$b;->a(Ljava/lang/String;)V

    .line 38
    const-string v7, "enable"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/umeng/analytics/pro/cx$b;->a(I)V

    .line 39
    const-string v7, "start"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/umeng/analytics/pro/cx$b;->b(Ljava/lang/String;)V

    .line 40
    const-string v7, "end"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/umeng/analytics/pro/cx$b;->c(Ljava/lang/String;)V

    .line 41
    const-string v7, "interval"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/umeng/analytics/pro/cx$b;->d(Ljava/lang/String;)V

    .line 42
    const-string v7, "accType"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/umeng/analytics/pro/cx$b;->e(Ljava/lang/String;)V

    .line 43
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 44
    :cond_5
    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/cx$a;->a(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 45
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 46
    :cond_6
    :goto_4
    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/cx;->a(Lcom/umeng/analytics/pro/cx$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 47
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_6
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/cx;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/umeng/analytics/pro/cx;->a:I

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/cx$a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/umeng/analytics/pro/cx;->e:Lcom/umeng/analytics/pro/cx$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/umeng/analytics/pro/cx;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/cx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/umeng/analytics/pro/cx;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/cx;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/cx;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/cx;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Lcom/umeng/analytics/pro/cx$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/cx;->e:Lcom/umeng/analytics/pro/cx$a;

    .line 2
    .line 3
    return-object v0
.end method
