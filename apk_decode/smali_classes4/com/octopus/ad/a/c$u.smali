.class public Lcom/octopus/ad/a/c$u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/Boolean;

.field private o:Z

.field private p:Z

.field private q:J

.field private r:Lcom/octopus/ad/a/c$k;

.field private s:Lcom/octopus/ad/a/c$l;

.field private t:Lcom/octopus/ad/a/c$z;

.field private u:Lcom/octopus/ad/a/h;

.field private v:Lcom/octopus/ad/model/ShakeValue;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$w;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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
    iput-boolean v0, p0, Lcom/octopus/ad/a/c$u;->m:Z

    .line 6
    .line 7
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/octopus/ad/a/c$u;
    .locals 8

    .line 14
    const-string v0, "@#&!"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 15
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/octopus/ad/a/c$u;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 17
    const-string v2, "OctopusAd_Time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u662f\u5426\u7f13\u5b58\u5e7f\u544a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 18
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p5

    invoke-virtual {p5}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object p5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adPreRsp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v2, v0}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p5, 0x0

    move-wide v6, p3

    move-object p4, p0

    move-object p0, p1

    move-object p1, p2

    move-wide p2, v6

    .line 19
    invoke-static/range {p0 .. p5}, Lcom/octopus/ad/a/c$u;->b(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lcom/octopus/ad/a/c$u;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    return-object v1

    .line 20
    :goto_1
    const-string p1, "OctopusAd"

    const-string p2, "An Exception Caught"

    invoke-static {p1, p2, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lcom/octopus/ad/a/c$u;
    .locals 1

    .line 21
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/octopus/ad/a/c$u;->b(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lcom/octopus/ad/a/c$u;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 22
    const-string p1, "OctopusAd"

    const-string p2, "An Exception Caught"

    invoke-static {p1, p2, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 24
    new-array v1, v1, [B

    .line 25
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 27
    :cond_0
    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {p0}, Lcom/octopus/ad/a/c$u;->b(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/util/List;)Landroid/os/Handler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    .line 461
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OctHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 463
    new-instance v1, Lcom/octopus/ad/a/c$u$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/octopus/ad/a/c$u$1;-><init>(Landroid/os/Looper;Ljava/util/List;)V

    return-object v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lcom/octopus/ad/a/c$u;
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p4

    .line 5
    const-string v1, "cover"

    const-string v2, "dspName"

    const-string v3, "deepLink"

    const-string v4, "icon"

    const-string v5, "description"

    const-string v6, "title"

    const-string v7, "resId"

    const-string v8, "cpaDelay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slotId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p0

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\uff0crequestId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p1

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\uff0cencryptStr = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ServerResponse"

    invoke-static {v10, v9}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v9

    iget-object v9, v9, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v11, "encrypt"

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v11, v12}, Lcom/octopus/ad/internal/c/o;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_0

    .line 7
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz p5, :cond_1

    .line 8
    :cond_0
    invoke-static {}, Lcom/octopus/ad/d/b/e;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/octopus/ad/d/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decryptStr = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/octopus/ad/d/b/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    new-instance v9, Lcom/octopus/ad/a/c$u;

    invoke-direct {v9}, Lcom/octopus/ad/a/c$u;-><init>()V

    if-nez v0, :cond_3

    :cond_2
    move-object v1, v9

    goto/16 :goto_27

    .line 11
    :cond_3
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "errcode"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->a(Ljava/lang/String;)V

    .line 13
    const-string v0, "errmsg"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->b(Ljava/lang/String;)V

    .line 14
    const-string v0, "preload"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->a(Z)V

    .line 15
    const-string v0, "priority"

    const/4 v11, 0x1

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->b(I)V

    .line 16
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->c(I)V

    .line 17
    const-string v0, "initSo"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->b(Z)V

    .line 18
    const-string v0, "isHook"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->c(Z)V

    .line 19
    const-string v0, "logReportFlag"

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->d(Z)V

    .line 20
    const-string v0, "status"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->a(I)V

    .line 21
    const-string v0, "boostId"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->c(Ljava/lang/String;)V

    .line 22
    const-string v0, "boostIds"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/octopus/ad/a/c$u;->f(Ljava/lang/String;)V

    .line 23
    const-string v0, "ts"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lcom/octopus/ad/a/c$u;->a(J)V

    .line 24
    const-string v0, "extTracking"

    invoke-static {v10, v0}, Lcom/octopus/ad/internal/c/k;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 25
    new-instance v11, Lcom/octopus/ad/a/c$m;

    invoke-direct {v11}, Lcom/octopus/ad/a/c$m;-><init>()V

    .line 26
    const-string v12, "iUrls"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-static {v12}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v12

    .line 27
    invoke-virtual {v11, v12}, Lcom/octopus/ad/a/c$m;->a(Ljava/util/List;)V

    .line 28
    const-string v12, "cUrls"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-static {v12}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v12

    .line 29
    invoke-virtual {v11, v12}, Lcom/octopus/ad/a/c$m;->b(Ljava/util/List;)V

    .line 30
    const-string v12, "eInterval"

    invoke-static {v0, v12}, Lcom/octopus/ad/internal/c/k;->e(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v12

    .line 31
    invoke-virtual {v11, v12, v13}, Lcom/octopus/ad/a/c$m;->a(J)V

    .line 32
    invoke-virtual {v9, v11}, Lcom/octopus/ad/a/c$u;->a(Lcom/octopus/ad/a/c$m;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v9

    goto/16 :goto_28

    .line 33
    :cond_4
    :goto_0
    const-string v0, "spaceInfo"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 34
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {v0}, Lcom/octopus/ad/a/c$u;->b(Lorg/json/JSONArray;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v12, 0x0

    .line 36
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_3d

    .line 37
    new-instance v13, Lcom/octopus/ad/a/c$w;

    invoke-direct {v13}, Lcom/octopus/ad/a/c$w;-><init>()V

    .line 38
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_3c

    .line 39
    const-string v11, "slotId"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/octopus/ad/a/c$w;->a(Ljava/lang/String;)V

    .line 40
    const-string v11, "spaceParam"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/octopus/ad/a/c$w;->b(Ljava/lang/String;)V

    .line 41
    const-string v11, "adpType"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/octopus/ad/a/g$a;->a(I)Lcom/octopus/ad/a/g$a;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/octopus/ad/a/c$w;->a(Lcom/octopus/ad/a/g$a;)V

    .line 42
    const-string v11, "refreshInterval"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/octopus/ad/a/c$w;->a(I)V

    .line 43
    const-string v11, "wordText"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/octopus/ad/a/c$w;->c(Ljava/lang/String;)V

    .line 44
    const-string v11, "filter"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/octopus/ad/a/c$w;->b(I)V

    .line 45
    const-string v11, "screenDirection"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/octopus/ad/a/g$h;->a(I)Lcom/octopus/ad/a/g$h;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/octopus/ad/a/c$w;->a(Lcom/octopus/ad/a/g$h;)V

    .line 46
    const-string v11, "width"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/octopus/ad/a/c$w;->d(Ljava/lang/String;)V

    .line 47
    const-string v11, "height"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/octopus/ad/a/c$w;->e(Ljava/lang/String;)V

    .line 48
    const-string v11, "adpPosition"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_5

    move/from16 v16, v12

    .line 49
    new-instance v12, Lcom/octopus/ad/a/c$f;

    invoke-direct {v12}, Lcom/octopus/ad/a/c$f;-><init>()V

    .line 50
    const-string v14, "x"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/octopus/ad/a/c$f;->a(Ljava/lang/String;)V

    .line 51
    const-string v14, "y"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/octopus/ad/a/c$f;->b(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v13, v12}, Lcom/octopus/ad/a/c$w;->a(Lcom/octopus/ad/a/c$f;)V

    goto :goto_2

    :cond_5
    move/from16 v16, v12

    .line 53
    :goto_2
    const-string v11, "interEvent"

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-string v12, "clk"

    const-string v14, "v"

    move-object/from16 v17, v10

    const-string v10, "o"

    if-eqz v11, :cond_b

    move-object/from16 v18, v8

    .line 55
    :try_start_1
    new-instance v8, Lcom/octopus/ad/a/c$p;

    invoke-direct {v8}, Lcom/octopus/ad/a/c$p;-><init>()V

    move-object/from16 v19, v1

    .line 56
    const-string v1, "shakeEvent"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v20, v2

    .line 57
    const-string v2, "tx"

    if-eqz v1, :cond_6

    move-object/from16 v21, v3

    .line 58
    :try_start_2
    new-instance v3, Lcom/octopus/ad/a/c$v;

    invoke-direct {v3}, Lcom/octopus/ad/a/c$v;-><init>()V

    move-object/from16 v22, v4

    .line 59
    invoke-static {v1, v14}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v23, v5

    .line 60
    const-string v5, "show"

    invoke-static {v1, v5}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v24, v6

    .line 61
    const-string v6, "time"

    invoke-static {v1, v6}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v25, v7

    .line 62
    const-string v7, "sr"

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    invoke-static {v1, v7}, Lcom/octopus/ad/internal/c/k;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v13

    .line 63
    const-string v7, "ang"

    move-object/from16 v29, v10

    move-object/from16 v28, v11

    invoke-static {v1, v7}, Lcom/octopus/ad/internal/c/k;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v10

    .line 64
    invoke-virtual {v3, v4}, Lcom/octopus/ad/a/c$v;->a(I)V

    .line 65
    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$v;->d(I)V

    .line 66
    invoke-virtual {v3, v13, v14}, Lcom/octopus/ad/a/c$v;->a(D)V

    .line 67
    invoke-virtual {v3, v10, v11}, Lcom/octopus/ad/a/c$v;->b(D)V

    .line 68
    invoke-virtual {v3, v6}, Lcom/octopus/ad/a/c$v;->f(I)V

    move-wide/from16 v30, v13

    const/4 v7, 0x1

    .line 69
    invoke-virtual {v1, v12, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v3, v13}, Lcom/octopus/ad/a/c$v;->g(I)V

    .line 70
    const-string v7, "or"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/octopus/ad/a/c$v;->b(I)V

    .line 71
    const-string v7, "sn"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/octopus/ad/a/c$v;->c(I)V

    .line 72
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/octopus/ad/a/c$v;->a(Ljava/lang/String;)V

    .line 73
    const-string v7, "type"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/octopus/ad/a/c$v;->e(I)V

    .line 74
    invoke-virtual {v8, v3}, Lcom/octopus/ad/a/c$p;->a(Lcom/octopus/ad/a/c$v;)V

    const/4 v7, 0x1

    if-ne v4, v7, :cond_7

    if-ne v5, v7, :cond_7

    .line 75
    new-instance v1, Lcom/octopus/ad/model/ShakeValue;

    invoke-direct {v1}, Lcom/octopus/ad/model/ShakeValue;-><init>()V

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double v13, v30, v3

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    .line 76
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/octopus/ad/model/ShakeValue;->setAcceleration(D)V

    const-wide v3, 0x4041800000000000L    # 35.0

    .line 77
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/octopus/ad/model/ShakeValue;->setAngle(D)V

    const/4 v3, 0x3

    .line 78
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/octopus/ad/model/ShakeValue;->setTime(I)V

    .line 79
    invoke-virtual {v9, v1}, Lcom/octopus/ad/a/c$u;->a(Lcom/octopus/ad/model/ShakeValue;)V

    goto :goto_3

    :cond_6
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v29, v10

    move-object/from16 v28, v11

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .line 80
    :cond_7
    :goto_3
    const-string v1, "scrollEvent"

    move-object/from16 v3, v28

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 81
    new-instance v4, Lcom/octopus/ad/a/c$t;

    invoke-direct {v4}, Lcom/octopus/ad/a/c$t;-><init>()V

    move-object/from16 v5, v27

    .line 82
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/octopus/ad/a/c$t;->a(I)V

    .line 83
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/octopus/ad/a/c$t;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v8, v4}, Lcom/octopus/ad/a/c$p;->a(Lcom/octopus/ad/a/c$t;)V

    goto :goto_4

    :cond_8
    move-object/from16 v5, v27

    .line 85
    :goto_4
    const-string v1, "fullScreenClk"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 86
    new-instance v4, Lcom/octopus/ad/a/c$n;

    invoke-direct {v4}, Lcom/octopus/ad/a/c$n;-><init>()V

    .line 87
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/octopus/ad/a/c$n;->a(I)V

    move-object/from16 v6, v29

    .line 88
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/octopus/ad/a/c$n;->b(I)V

    .line 89
    invoke-virtual {v8, v4}, Lcom/octopus/ad/a/c$p;->a(Lcom/octopus/ad/a/c$n;)V

    goto :goto_5

    :cond_9
    move-object/from16 v6, v29

    .line 90
    :goto_5
    const-string v1, "regionScreenClk"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 91
    new-instance v3, Lcom/octopus/ad/a/c$s;

    invoke-direct {v3}, Lcom/octopus/ad/a/c$s;-><init>()V

    .line 92
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/a/c$s;->a(I)V

    .line 93
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/octopus/ad/a/c$s;->a(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v8, v3}, Lcom/octopus/ad/a/c$p;->a(Lcom/octopus/ad/a/c$s;)V

    :cond_a
    move-object/from16 v1, v26

    .line 95
    invoke-virtual {v1, v8}, Lcom/octopus/ad/a/c$w;->a(Lcom/octopus/ad/a/c$p;)V

    goto :goto_6

    :cond_b
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v18, v8

    move-object v6, v10

    move-object v1, v13

    move-object v5, v14

    .line 96
    :goto_6
    const-string v2, "strategy"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 97
    new-instance v3, Lcom/octopus/ad/a/c$x;

    invoke-direct {v3}, Lcom/octopus/ad/a/c$x;-><init>()V

    .line 98
    const-string v4, "pass"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 99
    new-instance v7, Lcom/octopus/ad/a/c$r;

    invoke-direct {v7}, Lcom/octopus/ad/a/c$r;-><init>()V

    .line 100
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/octopus/ad/a/c$r;->a(I)V

    .line 101
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/octopus/ad/a/c$r;->b(I)V

    .line 102
    invoke-virtual {v3, v7}, Lcom/octopus/ad/a/c$x;->a(Lcom/octopus/ad/a/c$r;)V

    .line 103
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v9, v4}, Lcom/octopus/ad/a/c$u;->g(Z)V

    .line 104
    :cond_d
    const-string v4, "aoclk"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    const-string v7, "co"

    const-string v8, "ct"

    if-eqz v4, :cond_e

    .line 106
    :try_start_3
    new-instance v10, Lcom/octopus/ad/a/c$g;

    invoke-direct {v10}, Lcom/octopus/ad/a/c$g;-><init>()V

    .line 107
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/octopus/ad/a/c$g;->a(I)V

    .line 108
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/octopus/ad/a/c$g;->b(I)V

    .line 109
    const-string v11, "cr"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/octopus/ad/a/c$g;->c(I)V

    .line 110
    const-string v11, "cro"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/octopus/ad/a/c$g;->d(I)V

    .line 111
    invoke-virtual {v3, v10}, Lcom/octopus/ad/a/c$x;->a(Lcom/octopus/ad/a/c$g;)V

    .line 112
    :cond_e
    const-string v4, "impCallback"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 113
    new-instance v10, Lcom/octopus/ad/a/c$o;

    invoke-direct {v10}, Lcom/octopus/ad/a/c$o;-><init>()V

    .line 114
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/octopus/ad/a/c$o;->a(I)V

    .line 115
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/octopus/ad/a/c$o;->b(I)V

    .line 116
    invoke-virtual {v3, v10}, Lcom/octopus/ad/a/c$x;->a(Lcom/octopus/ad/a/c$o;)V

    .line 117
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_f

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v9, v4}, Lcom/octopus/ad/a/c$u;->e(Z)V

    .line 118
    :cond_10
    const-string v4, "callback"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 119
    new-instance v10, Lcom/octopus/ad/a/c$h;

    invoke-direct {v10}, Lcom/octopus/ad/a/c$h;-><init>()V

    .line 120
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/octopus/ad/a/c$h;->a(I)V

    .line 121
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/octopus/ad/a/c$h;->b(I)V

    .line 122
    invoke-virtual {v3, v10}, Lcom/octopus/ad/a/c$x;->a(Lcom/octopus/ad/a/c$h;)V

    .line 123
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_11

    const/4 v4, 0x1

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    :goto_9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/octopus/ad/a/c$u;->a(Ljava/lang/Boolean;)V

    .line 124
    :cond_12
    const-string v4, "touchclk"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 125
    new-instance v10, Lcom/octopus/ad/a/c$y;

    invoke-direct {v10}, Lcom/octopus/ad/a/c$y;-><init>()V

    .line 126
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/octopus/ad/a/c$y;->a(I)V

    .line 127
    invoke-virtual {v3, v10}, Lcom/octopus/ad/a/c$x;->a(Lcom/octopus/ad/a/c$y;)V

    .line 128
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_13

    const/4 v4, 0x1

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v9, v4}, Lcom/octopus/ad/a/c$u;->f(Z)V

    .line 129
    :cond_14
    const-string v4, "dialog"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 130
    new-instance v6, Lcom/octopus/ad/a/c$j;

    invoke-direct {v6}, Lcom/octopus/ad/a/c$j;-><init>()V

    .line 131
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/octopus/ad/a/c$j;->a(I)V

    .line 132
    invoke-virtual {v3, v6}, Lcom/octopus/ad/a/c$x;->a(Lcom/octopus/ad/a/c$j;)V

    .line 133
    :cond_15
    const-string v4, "nDpUp"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 134
    new-instance v5, Lcom/octopus/ad/a/c$q;

    invoke-direct {v5}, Lcom/octopus/ad/a/c$q;-><init>()V

    .line 135
    const-string v6, "eo"

    invoke-static {v4, v6}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$q;->a(I)V

    .line 136
    const-string v6, "et"

    invoke-static {v4, v6}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$q;->c(I)V

    .line 137
    invoke-static {v4, v7}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$q;->b(I)V

    .line 138
    invoke-static {v4, v8}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$q;->d(I)V

    .line 139
    const-string v6, "lo"

    invoke-static {v4, v6}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/octopus/ad/a/c$q;->e(I)V

    .line 140
    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$x;->a(Lcom/octopus/ad/a/c$q;)V

    .line 141
    :cond_16
    const-string v4, "dpClk"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 142
    new-instance v5, Lcom/octopus/ad/a/c$k;

    invoke-direct {v5}, Lcom/octopus/ad/a/c$k;-><init>()V

    .line 143
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$k;->a(I)V

    .line 144
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$k;->b(I)V

    .line 145
    const-string v6, "cx"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/octopus/ad/a/c$k;->a(D)V

    .line 146
    const-string v6, "cy"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/octopus/ad/a/c$k;->b(D)V

    .line 147
    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$x;->a(Lcom/octopus/ad/a/c$k;)V

    .line 148
    invoke-virtual {v9, v5}, Lcom/octopus/ad/a/c$u;->a(Lcom/octopus/ad/a/c$k;)V

    .line 149
    :cond_17
    const-string v4, "dpInt"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 150
    new-instance v5, Lcom/octopus/ad/a/c$l;

    invoke-direct {v5}, Lcom/octopus/ad/a/c$l;-><init>()V

    .line 151
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$l;->a(I)V

    .line 152
    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$l;->a(Ljava/lang/String;)V

    .line 153
    const-string v6, "pkg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$l;->b(Ljava/lang/String;)V

    .line 154
    const-string v6, "ploy"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/octopus/ad/a/c$l;->b(I)V

    .line 155
    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$x;->a(Lcom/octopus/ad/a/c$l;)V

    .line 156
    invoke-virtual {v9, v5}, Lcom/octopus/ad/a/c$u;->a(Lcom/octopus/ad/a/c$l;)V

    .line 157
    :cond_18
    const-string v4, "vdp"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 158
    new-instance v5, Lcom/octopus/ad/a/c$z;

    invoke-direct {v5}, Lcom/octopus/ad/a/c$z;-><init>()V

    .line 159
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$z;->a(I)V

    .line 160
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/octopus/ad/a/c$z;->b(I)V

    .line 161
    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$x;->a(Lcom/octopus/ad/a/c$z;)V

    .line 162
    invoke-virtual {v9, v5}, Lcom/octopus/ad/a/c$u;->a(Lcom/octopus/ad/a/c$z;)V

    .line 163
    :cond_19
    const-string v4, "dpForbid"

    invoke-static {v2, v4}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/octopus/ad/a/c$u;->e(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, v3}, Lcom/octopus/ad/a/c$w;->a(Lcom/octopus/ad/a/c$x;)V

    .line 165
    :cond_1a
    const-string v2, "autoClose"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->a(Z)V

    .line 166
    const-string v2, "manualClosable"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->b(Z)V

    .line 167
    const-string v2, "isStopover"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->c(Z)V

    .line 168
    const-string v2, "quickReward"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->d(Z)V

    .line 169
    const-string v2, "isEndPage"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->e(Z)V

    .line 170
    const-string v2, "isTexture"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->f(Z)V

    .line 171
    const-string v2, "isWaitCache"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->g(Z)V

    .line 172
    const-string v2, "maxTime"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->c(I)V

    .line 173
    const-string v2, "minTime"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->d(I)V

    .line 174
    const-string v2, "repeatNum"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->e(I)V

    .line 175
    const-string v2, "wifiPreload"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->h(Z)V

    .line 176
    const-string v2, "mute"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->i(Z)V

    .line 177
    const-string v2, "fullScreen"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->j(Z)V

    .line 178
    const-string v2, "usePkg"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->k(Z)V

    .line 179
    const-string v2, "newDp"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->l(Z)V

    .line 180
    const-string v2, "preheat"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->g(I)V

    .line 181
    const-string v2, "listenCancel"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->m(Z)V

    .line 182
    const-string v2, "clickBackClose"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->n(Z)V

    .line 183
    const-string v2, "checkOtherDp"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->o(Z)V

    .line 184
    const-string v2, "backgroundDim"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->p(Z)V

    .line 185
    const-string v2, "autoPlay"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->q(Z)V

    .line 186
    const-string v2, "orgID"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->i(I)V

    .line 187
    const-string v2, "callModel"

    const/16 v3, 0xc8

    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->f(I)V

    .line 188
    const-string v2, "contentType"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->j(I)V

    .line 189
    const-string v2, "changeUrl"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->f(Ljava/lang/String;)V

    .line 190
    const-string v2, "changeDelay"

    const/16 v3, 0x1388

    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->h(I)V

    .line 191
    const-string v2, "appID"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->g(Ljava/lang/String;)V

    .line 192
    const-string v2, "acratio"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->k(I)V

    .line 193
    const-string v2, "isShakeAd"

    invoke-static {v15, v2}, Lcom/octopus/ad/internal/c/k;->g(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$w;->r(Z)V

    .line 194
    const-string v2, "adResponse"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-static {v2}, Lcom/octopus/ad/a/c$u;->b(Lorg/json/JSONArray;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const/4 v4, 0x0

    .line 197
    :goto_b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3a

    .line 198
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 199
    new-instance v6, Lcom/octopus/ad/a/c$d;

    invoke-direct {v6}, Lcom/octopus/ad/a/c$d;-><init>()V

    .line 200
    const-string v7, "extInfo"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/c$d;->a(Ljava/lang/String;)V

    .line 201
    const-string v7, "adid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/c$d;->b(Ljava/lang/String;)V

    .line 202
    const-string v7, "contentInfo"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 203
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-static {v7}, Lcom/octopus/ad/a/c$u;->b(Lorg/json/JSONArray;)Z

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v11, "packageName"

    const-string v13, "landingPageUrl"

    const-string v14, "appDownloadURL"

    if-eqz v10, :cond_26

    const/4 v10, 0x0

    .line 205
    :goto_c
    :try_start_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v10, v15, :cond_25

    .line 206
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v26, v2

    .line 207
    new-instance v2, Lcom/octopus/ad/a/c$a;

    invoke-direct {v2}, Lcom/octopus/ad/a/c$a;-><init>()V

    move/from16 v27, v4

    .line 208
    const-string v4, "template"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/octopus/ad/a/c$a;->a(Ljava/lang/String;)V

    .line 209
    const-string v4, "richText"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/octopus/ad/a/c$a;->b(Ljava/lang/String;)V

    .line 210
    const-string v4, "renderType"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/octopus/ad/a/g$f;->a(I)Lcom/octopus/ad/a/g$f;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/octopus/ad/a/c$a;->a(Lcom/octopus/ad/a/g$f;)V

    .line 211
    const-string v4, "adcontentSlot"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 212
    invoke-static {v4}, Lcom/octopus/ad/a/c$u;->b(Lorg/json/JSONArray;)Z

    move-result v15

    if-eqz v15, :cond_24

    .line 213
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v7

    move/from16 v29, v10

    const/4 v7, 0x0

    .line 214
    :goto_d
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v7, v10, :cond_23

    .line 215
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_22

    move-object/from16 v30, v4

    .line 216
    new-instance v4, Lcom/octopus/ad/a/c$e;

    invoke-direct {v4}, Lcom/octopus/ad/a/c$e;-><init>()V

    move/from16 v31, v7

    .line 217
    const-string v7, "resType"

    invoke-static {v10, v7}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    move/from16 v32, v7

    move-object/from16 v7, v25

    move-object/from16 v25, v1

    .line 218
    invoke-static {v10, v7}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v33, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v12

    .line 219
    invoke-static {v10, v3}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v34, v5

    move-object/from16 v5, v23

    move-object/from16 v23, v6

    .line 220
    invoke-static {v10, v5}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v35, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v2

    .line 221
    invoke-static {v10, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v36, v15

    .line 222
    const-string v15, "content"

    invoke-static {v10, v15}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v37, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v9

    .line 223
    :try_start_5
    invoke-static {v10, v4}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v38, v15

    .line 224
    invoke-static {v10, v14}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v39, v14

    .line 225
    invoke-static {v10, v13}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v40, v13

    .line 226
    invoke-static {v10, v11}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v41, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v13

    .line 227
    invoke-static {v10, v11}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v42, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v15

    .line 228
    invoke-static {v10, v14}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v43, v10

    .line 229
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 230
    invoke-interface {v10, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-interface {v10, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-interface {v10, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "imageMode"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual/range {v21 .. v21}, Lcom/octopus/ad/a/c$u;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 237
    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :catch_1
    move-exception v0

    move-object/from16 v1, v21

    goto/16 :goto_28

    .line 238
    :cond_1b
    :goto_e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 239
    invoke-interface {v10, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_1c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 241
    invoke-interface {v10, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_1d
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    move-object/from16 v1, v19

    move-object/from16 v6, v39

    .line 243
    invoke-interface {v10, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_1e
    move-object/from16 v6, v39

    .line 244
    :goto_f
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    move-object/from16 v9, v40

    move-object/from16 v1, v42

    .line 245
    invoke-interface {v10, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_1f
    move-object/from16 v9, v40

    .line 246
    :goto_10
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    move-object/from16 v1, v20

    move-object/from16 v12, v41

    .line 247
    invoke-interface {v10, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_20
    move-object/from16 v12, v41

    :goto_11
    if-nez v32, :cond_21

    .line 248
    const-string v1, "imageUrl"

    move-object/from16 v13, v38

    invoke-interface {v10, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    move-object/from16 v1, v21

    goto :goto_13

    :cond_21
    move-object/from16 v13, v38

    .line 249
    const-string v1, "videoUrl"

    invoke-interface {v10, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_12

    .line 250
    :goto_13
    :try_start_6
    invoke-virtual {v1, v10}, Lcom/octopus/ad/a/c$u;->a(Ljava/util/Map;)V

    .line 251
    const-string v10, "md5"

    move-object/from16 v18, v2

    move-object/from16 v2, v43

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v3

    move-object/from16 v3, v37

    invoke-virtual {v3, v10}, Lcom/octopus/ad/a/c$e;->b(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v3, v13}, Lcom/octopus/ad/a/c$e;->c(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3, v15}, Lcom/octopus/ad/a/c$e;->d(Ljava/lang/String;)V

    .line 254
    const-string v10, "mime"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-virtual {v3, v2}, Lcom/octopus/ad/a/c$e;->a(Ljava/lang/String;)V

    move-object/from16 v10, v36

    .line 256
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/c$u;->d(Ljava/lang/String;)V

    goto :goto_14

    :catch_2
    move-exception v0

    goto/16 :goto_28

    :cond_22
    move-object/from16 v33, v3

    move-object/from16 v30, v4

    move-object/from16 v34, v5

    move/from16 v31, v7

    move-object/from16 v35, v8

    move-object v10, v15

    move-object/from16 v4, v21

    move-object/from16 v8, v22

    move-object/from16 v5, v23

    move-object/from16 v7, v25

    move-object/from16 v25, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v6

    move-object v1, v9

    move-object v9, v13

    move-object v6, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v24

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v20

    :goto_14
    add-int/lit8 v2, v31, 0x1

    move-object/from16 v21, v4

    move-object v13, v9

    move-object v15, v10

    move-object/from16 v20, v11

    move-object v11, v12

    move-object/from16 v12, v24

    move-object/from16 v4, v30

    move-object/from16 v3, v33

    move-object v9, v1

    move-object/from16 v24, v19

    move-object/from16 v1, v25

    move-object/from16 v25, v7

    move-object/from16 v19, v14

    move v7, v2

    move-object v14, v6

    move-object/from16 v2, v22

    move-object/from16 v6, v23

    move-object/from16 v23, v5

    move-object/from16 v22, v8

    move-object/from16 v5, v34

    move-object/from16 v8, v35

    goto/16 :goto_d

    :cond_23
    move-object/from16 v33, v3

    move-object/from16 v34, v5

    move-object/from16 v35, v8

    move-object v10, v15

    move-object/from16 v4, v21

    move-object/from16 v8, v22

    move-object/from16 v5, v23

    move-object/from16 v7, v25

    move-object/from16 v25, v1

    move-object/from16 v23, v6

    move-object v1, v9

    move-object v9, v13

    move-object v6, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v24

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v20

    .line 258
    invoke-virtual {v2, v10}, Lcom/octopus/ad/a/c$a;->a(Ljava/util/List;)V

    :goto_15
    move-object/from16 v3, v35

    goto :goto_16

    :cond_24
    move-object/from16 v33, v3

    move-object/from16 v34, v5

    move-object/from16 v28, v7

    move-object/from16 v35, v8

    move/from16 v29, v10

    move-object/from16 v4, v21

    move-object/from16 v8, v22

    move-object/from16 v5, v23

    move-object/from16 v7, v25

    move-object/from16 v25, v1

    move-object/from16 v23, v6

    move-object v1, v9

    move-object v9, v13

    move-object v6, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v24

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v20

    goto :goto_15

    .line 259
    :goto_16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v29, 0x1

    move-object/from16 v21, v4

    move-object/from16 v22, v8

    move-object v13, v9

    move-object/from16 v20, v11

    move-object v11, v12

    move-object/from16 v12, v24

    move-object/from16 v2, v26

    move/from16 v4, v27

    move-object v9, v1

    move-object v8, v3

    move-object/from16 v24, v19

    move-object/from16 v1, v25

    move-object/from16 v3, v33

    move-object/from16 v25, v7

    move-object/from16 v19, v14

    move-object/from16 v7, v28

    move-object v14, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v5

    move-object/from16 v5, v34

    goto/16 :goto_c

    :cond_25
    move-object/from16 v26, v2

    move-object/from16 v33, v3

    move/from16 v27, v4

    move-object/from16 v34, v5

    move-object v2, v6

    move-object v3, v8

    move-object v6, v14

    move-object/from16 v14, v19

    move-object/from16 v4, v21

    move-object/from16 v8, v22

    move-object/from16 v5, v23

    move-object/from16 v19, v24

    move-object/from16 v7, v25

    move-object/from16 v25, v1

    move-object v1, v9

    move-object/from16 v24, v12

    move-object v9, v13

    move-object v12, v11

    move-object/from16 v11, v20

    .line 260
    invoke-virtual {v2, v3}, Lcom/octopus/ad/a/c$d;->a(Ljava/util/List;)V

    goto :goto_17

    :cond_26
    move-object/from16 v26, v2

    move-object/from16 v33, v3

    move/from16 v27, v4

    move-object/from16 v34, v5

    move-object v2, v6

    move-object v6, v14

    move-object/from16 v14, v19

    move-object/from16 v4, v21

    move-object/from16 v8, v22

    move-object/from16 v5, v23

    move-object/from16 v19, v24

    move-object/from16 v7, v25

    move-object/from16 v25, v1

    move-object v1, v9

    move-object/from16 v24, v12

    move-object v9, v13

    move-object v12, v11

    move-object/from16 v11, v20

    .line 261
    :goto_17
    const-string v3, "adLogo"

    move-object/from16 v10, v34

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 262
    new-instance v13, Lcom/octopus/ad/a/c$c;

    invoke-direct {v13}, Lcom/octopus/ad/a/c$c;-><init>()V

    .line 263
    const-string v15, "adLabel"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/octopus/ad/a/c$c;->b(Ljava/lang/String;)V

    .line 264
    const-string v15, "adLabelUrl"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/octopus/ad/a/c$c;->a(Ljava/lang/String;)V

    .line 265
    const-string v15, "sourceLabel"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/octopus/ad/a/c$c;->d(Ljava/lang/String;)V

    .line 266
    const-string v15, "sourceUrl"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/octopus/ad/a/c$c;->c(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2, v13}, Lcom/octopus/ad/a/c$d;->a(Lcom/octopus/ad/a/c$c;)V

    .line 268
    :cond_27
    const-string v3, "price"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/octopus/ad/a/c$d;->a(I)V

    .line 269
    const-string v3, "tagid"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/octopus/ad/a/c$d;->c(Ljava/lang/String;)V

    .line 270
    const-string v3, "validTime"

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    sget-wide v4, Lcom/octopus/ad/internal/q;->y:J

    invoke-virtual {v10, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/octopus/ad/a/c$d;->a(J)V

    .line 271
    new-instance v3, Lcom/octopus/ad/a/c$b;

    invoke-direct {v3}, Lcom/octopus/ad/a/c$b;-><init>()V

    .line 272
    const-string v4, "interactInfo"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 273
    const-string v5, "thirdpartInfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 274
    invoke-static {v5}, Lcom/octopus/ad/a/c$u;->b(Lorg/json/JSONArray;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 275
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 276
    :goto_18
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v13, v15, :cond_29

    .line 277
    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_28

    move-object/from16 v20, v5

    .line 278
    new-instance v5, Lcom/octopus/ad/a/c$i;

    invoke-direct {v5}, Lcom/octopus/ad/a/c$i;-><init>()V

    move-object/from16 v22, v7

    .line 279
    const-string v7, "clickUrl"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/octopus/ad/a/c$i;->b(Ljava/lang/String;)V

    .line 280
    const-string v7, "viewUrl"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/octopus/ad/a/c$i;->a(Ljava/lang/String;)V

    .line 281
    const-string v7, "dpSucessUrl"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/octopus/ad/a/c$i;->c(Ljava/lang/String;)V

    .line 282
    const-string v7, "downSucessUrl"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/octopus/ad/a/c$i;->d(Ljava/lang/String;)V

    .line 283
    const-string v7, "lurl"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/octopus/ad/a/c$i;->e(Ljava/lang/String;)V

    .line 284
    const-string v7, "convertUrl"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/octopus/ad/a/c$i;->f(Ljava/lang/String;)V

    .line 285
    const-string v7, "onFinish"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/octopus/ad/a/c$i;->j(Ljava/lang/String;)V

    .line 286
    const-string v7, "onPause"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/octopus/ad/a/c$i;->h(Ljava/lang/String;)V

    .line 287
    const-string v7, "onRecover"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/octopus/ad/a/c$i;->i(Ljava/lang/String;)V

    .line 288
    const-string v7, "onStart"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/octopus/ad/a/c$i;->g(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_28
    move-object/from16 v20, v5

    move-object/from16 v22, v7

    :goto_19
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v20

    move-object/from16 v7, v22

    goto :goto_18

    :cond_29
    move-object/from16 v22, v7

    .line 290
    invoke-virtual {v3, v10}, Lcom/octopus/ad/a/c$b;->b(Ljava/util/List;)V

    goto :goto_1a

    :cond_2a
    move-object/from16 v22, v7

    .line 291
    :goto_1a
    const-string v5, "impTrackDomainList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 292
    invoke-static {v5}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 293
    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->a(Ljava/util/ArrayList;)V

    .line 294
    const-string v5, "clkTrackDomainList"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 295
    invoke-static {v5}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 296
    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->b(Ljava/util/ArrayList;)V

    .line 297
    const-string v5, "videoTrackers"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 298
    invoke-static {v5}, Lcom/octopus/ad/a/c$u;->b(Lorg/json/JSONArray;)Z

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const-string v10, "pause"

    const-string v13, "start"

    if-eqz v7, :cond_2d

    .line 299
    :try_start_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v8

    const/4 v15, 0x0

    .line 300
    :goto_1b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v15, v8, :cond_2c

    .line 301
    invoke-virtual {v5, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_2b

    move-object/from16 v28, v5

    .line 302
    new-instance v5, Lcom/octopus/ad/a/c$aa;

    invoke-direct {v5}, Lcom/octopus/ad/a/c$aa;-><init>()V

    move-object/from16 v29, v11

    .line 303
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/octopus/ad/a/c$aa;->a(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/octopus/ad/a/c$aa;->b(Ljava/lang/String;)V

    .line 305
    const-string v11, "quarter"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/octopus/ad/a/c$aa;->c(Ljava/lang/String;)V

    .line 306
    const-string v11, "half"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/octopus/ad/a/c$aa;->d(Ljava/lang/String;)V

    .line 307
    const-string v11, "threeQuarter"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/octopus/ad/a/c$aa;->e(Ljava/lang/String;)V

    .line 308
    const-string v11, "complete"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/octopus/ad/a/c$aa;->f(Ljava/lang/String;)V

    .line 309
    const-string v11, "exit"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/octopus/ad/a/c$aa;->g(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2b
    move-object/from16 v28, v5

    move-object/from16 v29, v11

    :goto_1c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v28

    move-object/from16 v11, v29

    goto :goto_1b

    :cond_2c
    move-object/from16 v29, v11

    .line 311
    invoke-virtual {v3, v7}, Lcom/octopus/ad/a/c$b;->a(Ljava/util/List;)V

    goto :goto_1d

    :cond_2d
    move-object/from16 v20, v8

    move-object/from16 v29, v11

    .line 312
    :goto_1d
    const-string v5, "apkName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->d(Ljava/lang/String;)V

    .line 313
    const-string v5, "appDesc"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->g(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->h(Ljava/lang/String;)V

    .line 315
    const-string v5, "appStoreID"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->f(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->a(Ljava/lang/String;)V

    .line 317
    const-string v5, "deeplinkUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->b(Ljava/lang/String;)V

    .line 318
    const-string v5, "sign"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->c(Ljava/lang/String;)V

    .line 319
    const-string v5, "interactType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->a(I)V

    .line 320
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->e(Ljava/lang/String;)V

    .line 321
    const-string v5, "checkSuccess"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->b(Z)V

    .line 322
    const-string v5, "useBuiltInBrow"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->a(Z)V

    .line 323
    const-string v5, "dpCancelOpenUrl"

    const/4 v7, 0x1

    invoke-static {v4, v5, v7}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->c(Z)V

    .line 324
    const-string v5, "preloadWebView"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->d(Z)V

    .line 325
    const-string v5, "openExternal"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->b(I)V

    .line 326
    const-string v5, "complianceInfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 327
    new-instance v6, Lcom/octopus/ad/model/ComplianceInfo;

    invoke-direct {v6}, Lcom/octopus/ad/model/ComplianceInfo;-><init>()V

    .line 328
    const-string v8, "appName"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/model/ComplianceInfo;->setAppName(Ljava/lang/String;)V

    .line 329
    const-string v8, "appVersion"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/model/ComplianceInfo;->setAppVersion(Ljava/lang/String;)V

    .line 330
    const-string v8, "developerName"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/model/ComplianceInfo;->setDeveloperName(Ljava/lang/String;)V

    .line 331
    const-string v8, "privacyUrl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/model/ComplianceInfo;->setPrivacyUrl(Ljava/lang/String;)V

    .line 332
    const-string v8, "permissionsUrl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/model/ComplianceInfo;->setPermissionsUrl(Ljava/lang/String;)V

    .line 333
    const-string v8, "functionDescUrl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/model/ComplianceInfo;->setFunctionDescUrl(Ljava/lang/String;)V

    .line 334
    const-string v8, "appIconURL"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/octopus/ad/model/ComplianceInfo;->setAppIconURL(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v3, v6}, Lcom/octopus/ad/a/c$b;->a(Lcom/octopus/ad/model/ComplianceInfo;)V

    .line 336
    :cond_2e
    const-string v5, "wxReq"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 337
    new-instance v6, Lcom/octopus/ad/a/i;

    invoke-direct {v6}, Lcom/octopus/ad/a/i;-><init>()V

    .line 338
    const-string v8, "path"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/i;->a(Ljava/lang/String;)V

    .line 339
    const-string v8, "appId"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/i;->b(Ljava/lang/String;)V

    .line 340
    const-string v8, "userName"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/octopus/ad/a/i;->c(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v3, v6}, Lcom/octopus/ad/a/c$b;->a(Lcom/octopus/ad/a/i;)V

    .line 342
    :cond_2f
    const-string v5, "videoMacroExt"

    invoke-static {v4, v5}, Lcom/octopus/ad/internal/c/k;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_30

    .line 343
    new-instance v6, Lcom/octopus/ad/a/h;

    invoke-direct {v6}, Lcom/octopus/ad/a/h;-><init>()V

    .line 344
    const-string v8, "__oct_video_start_ts__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/h;->a(Ljava/lang/String;)V

    .line 345
    const-string v8, "__oct_video_end_ts__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/octopus/ad/a/h;->b(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1, v6}, Lcom/octopus/ad/a/c$u;->a(Lcom/octopus/ad/a/h;)V

    .line 347
    :cond_30
    const-string v5, "clkMacroExt"

    invoke-static {v4, v5}, Lcom/octopus/ad/internal/c/k;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 348
    new-instance v6, Lcom/octopus/ad/a/e;

    invoke-direct {v6}, Lcom/octopus/ad/a/e;-><init>()V

    .line 349
    const-string v8, "__oct_down_x__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->d(Ljava/lang/String;)V

    .line 350
    const-string v8, "__oct_down_y__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->e(Ljava/lang/String;)V

    .line 351
    const-string v8, "__oct_down_time__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->f(Ljava/lang/String;)V

    .line 352
    const-string v8, "__oct_up_x__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->a(Ljava/lang/String;)V

    .line 353
    const-string v8, "__oct_up_y__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->b(Ljava/lang/String;)V

    .line 354
    const-string v8, "__oct_up_time__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->c(Ljava/lang/String;)V

    .line 355
    const-string v8, "__oct_x_max_acc__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->g(Ljava/lang/String;)V

    .line 356
    const-string v8, "__oct_y_max_acc__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->h(Ljava/lang/String;)V

    .line 357
    const-string v8, "__oct_z_max_acc__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->i(Ljava/lang/String;)V

    .line 358
    const-string v8, "__oct_shake_acc__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->k(Ljava/lang/String;)V

    .line 359
    const-string v8, "__oct_shake_ang__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->l(Ljava/lang/String;)V

    .line 360
    const-string v8, "__oct_shake_cnt__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->j(Ljava/lang/String;)V

    .line 361
    const-string v8, "__oct_turn_x__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->m(Ljava/lang/String;)V

    .line 362
    const-string v8, "__oct_turn_y__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->n(Ljava/lang/String;)V

    .line 363
    const-string v8, "__oct_turn_z__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->o(Ljava/lang/String;)V

    .line 364
    const-string v8, "__oct_turn_time__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->p(Ljava/lang/String;)V

    .line 365
    const-string v8, "__oct_s_time__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->q(Ljava/lang/String;)V

    .line 366
    const-string v8, "__oct_ms_time__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->r(Ljava/lang/String;)V

    .line 367
    const-string v8, "accMultiple"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->a(I)V

    .line 368
    const-string v8, "__oct_click_type__"

    invoke-static {v5, v8}, Lcom/octopus/ad/internal/c/k;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_31

    .line 369
    new-instance v8, Lcom/octopus/ad/a/e$a;

    invoke-direct {v8}, Lcom/octopus/ad/a/e$a;-><init>()V

    move-object/from16 v9, v24

    .line 370
    invoke-static {v5, v9}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/octopus/ad/a/e$a;->a(Ljava/lang/String;)V

    .line 371
    const-string v11, "shake"

    invoke-static {v5, v11}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/octopus/ad/a/e$a;->b(Ljava/lang/String;)V

    .line 372
    const-string v11, "scroll"

    invoke-static {v5, v11}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/octopus/ad/a/e$a;->c(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/e;->a(Lcom/octopus/ad/a/e$a;)V

    goto :goto_1e

    :cond_31
    move-object/from16 v9, v24

    .line 374
    :goto_1e
    invoke-virtual {v3, v6}, Lcom/octopus/ad/a/c$b;->a(Lcom/octopus/ad/a/e;)V

    goto :goto_1f

    :cond_32
    move-object/from16 v9, v24

    .line 375
    :goto_1f
    const-string v5, "followTrackExt"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 376
    new-instance v6, Lcom/octopus/ad/a/c$b$a;

    invoke-direct {v6}, Lcom/octopus/ad/a/c$b$a;-><init>()V

    .line 377
    const-string v8, "open"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 378
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 379
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->a(Ljava/util/List;)V

    .line 380
    const-string v8, "beginDownload"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 381
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 382
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->b(Ljava/util/List;)V

    .line 383
    const-string v8, "download"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 384
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 385
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->c(Ljava/util/List;)V

    .line 386
    const-string v8, "beginInstall"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 387
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 388
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->d(Ljava/util/List;)V

    .line 389
    const-string v8, "install"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 390
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 391
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->e(Ljava/util/List;)V

    .line 392
    const-string v8, "active"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 393
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 394
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->f(Ljava/util/List;)V

    .line 395
    const-string v8, "close"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 396
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 397
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->g(Ljava/util/List;)V

    .line 398
    const-string v8, "showSlide"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 399
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 400
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->h(Ljava/util/List;)V

    .line 401
    const-string v8, "pageClose"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 402
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 403
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->j(Ljava/util/List;)V

    .line 404
    const-string v8, "pageLoad"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 405
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 406
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->i(Ljava/util/List;)V

    .line 407
    const-string v8, "pageAction"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 408
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 409
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->k(Ljava/util/List;)V

    .line 410
    const-string v8, "deepLinkSuccess"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 411
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 412
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->l(Ljava/util/List;)V

    .line 413
    const-string v8, "deepLinkFail"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 414
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 415
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->m(Ljava/util/List;)V

    .line 416
    const-string v8, "dpAppInstalled"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 417
    invoke-static {v8}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 418
    invoke-virtual {v6, v8}, Lcom/octopus/ad/a/c$b$a;->n(Ljava/util/List;)V

    .line 419
    const-string v8, "dpAppNotInstalled"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 420
    invoke-static {v5}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 421
    invoke-virtual {v6, v5}, Lcom/octopus/ad/a/c$b$a;->o(Ljava/util/List;)V

    .line 422
    invoke-virtual {v3, v6}, Lcom/octopus/ad/a/c$b;->a(Lcom/octopus/ad/a/c$b$a;)V

    .line 423
    :cond_33
    const-string v5, "videoTrackExt"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 424
    new-instance v5, Lcom/octopus/ad/a/c$b$b;

    invoke-direct {v5}, Lcom/octopus/ad/a/c$b$b;-><init>()V

    .line 425
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 426
    invoke-static {v6}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 427
    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$b$b;->a(Ljava/util/List;)V

    .line 428
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 429
    invoke-static {v6}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 430
    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$b$b;->b(Ljava/util/List;)V

    .line 431
    const-string v6, "continue"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 432
    invoke-static {v6}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 433
    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$b$b;->c(Ljava/util/List;)V

    .line 434
    const-string v6, "exit"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 435
    invoke-static {v6}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 436
    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$b$b;->d(Ljava/util/List;)V

    .line 437
    const-string v6, "complete"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 438
    invoke-static {v6}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 439
    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$b$b;->e(Ljava/util/List;)V

    .line 440
    const-string v6, "showTrack"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 441
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-static {v4}, Lcom/octopus/ad/a/c$u;->b(Lorg/json/JSONArray;)Z

    move-result v8

    if-eqz v8, :cond_36

    const/4 v8, 0x0

    .line 443
    :goto_20
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v8, v10, :cond_35

    .line 444
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_34

    .line 445
    new-instance v11, Lcom/octopus/ad/a/c$b$b$a;

    invoke-direct {v11}, Lcom/octopus/ad/a/c$b$b$a;-><init>()V

    .line 446
    const-string v12, "t"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/octopus/ad/a/c$b$b$a;->a(I)V

    .line 447
    const-string v12, "url"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 448
    invoke-static {v10}, Lcom/octopus/ad/a/c$u;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 449
    invoke-virtual {v11, v10}, Lcom/octopus/ad/a/c$b$b$a;->a(Ljava/util/List;)V

    .line 450
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    .line 451
    :cond_35
    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/c$b$b;->f(Ljava/util/List;)V

    .line 452
    :cond_36
    invoke-virtual {v3, v5}, Lcom/octopus/ad/a/c$b;->a(Lcom/octopus/ad/a/c$b$b;)V

    .line 453
    :cond_37
    invoke-virtual {v2, v3}, Lcom/octopus/ad/a/c$d;->a(Lcom/octopus/ad/a/c$b;)V

    :goto_21
    move-object/from16 v3, v33

    goto :goto_22

    :cond_38
    move-object/from16 v22, v7

    move-object/from16 v20, v8

    move-object/from16 v29, v11

    move-object/from16 v9, v24

    const/4 v7, 0x1

    goto :goto_21

    .line 454
    :goto_22
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_39
    move-object/from16 v26, v2

    move/from16 v27, v4

    move-object/from16 v14, v19

    move-object/from16 v29, v20

    move-object/from16 v20, v22

    move-object/from16 v19, v24

    move-object/from16 v22, v25

    const/4 v7, 0x1

    move-object/from16 v25, v1

    move-object v1, v9

    move-object v9, v12

    :goto_23
    add-int/lit8 v4, v27, 0x1

    move-object v12, v9

    move-object/from16 v24, v19

    move-object/from16 v2, v26

    move-object v9, v1

    move-object/from16 v19, v14

    move-object/from16 v1, v25

    move-object/from16 v25, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v29

    goto/16 :goto_b

    :cond_3a
    move-object v2, v1

    move-object v1, v9

    move-object/from16 v14, v19

    move-object/from16 v29, v20

    move-object/from16 v20, v22

    move-object/from16 v19, v24

    move-object/from16 v22, v25

    const/4 v7, 0x1

    .line 455
    invoke-virtual {v2, v3}, Lcom/octopus/ad/a/c$w;->a(Ljava/util/List;)V

    :goto_24
    move-object/from16 v3, v17

    goto :goto_25

    :cond_3b
    move-object v2, v1

    move-object v1, v9

    move-object/from16 v14, v19

    move-object/from16 v29, v20

    move-object/from16 v20, v22

    move-object/from16 v19, v24

    move-object/from16 v22, v25

    const/4 v7, 0x1

    goto :goto_24

    .line 456
    :goto_25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_3c
    move-object v14, v1

    move-object/from16 v29, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v19, v6

    move-object/from16 v22, v7

    move-object/from16 v18, v8

    move-object v1, v9

    move-object v3, v10

    move/from16 v16, v12

    const/4 v7, 0x1

    :goto_26
    add-int/lit8 v12, v16, 0x1

    move-object v9, v1

    move-object v10, v3

    move-object v1, v14

    move-object/from16 v8, v18

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v7, v22

    move-object/from16 v5, v23

    move-object/from16 v2, v29

    move-object/from16 v14, p1

    goto/16 :goto_1

    :cond_3d
    move-object v1, v9

    move-object v3, v10

    .line 457
    invoke-virtual {v1, v3}, Lcom/octopus/ad/a/c$u;->a(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_27
    return-object v1

    .line 458
    :goto_28
    new-instance v11, Lcom/octopus/ad/internal/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v15, v2, p2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    const-string v12, "JSONERROR"

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v11 .. v17}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v11}, Lcom/octopus/ad/internal/o;->a(Lcom/octopus/ad/internal/l;)V

    .line 459
    const-string v2, "OctopusAd"

    const-string v3, "An Exception Caught"

    invoke-static {v2, v3, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static b(Lorg/json/JSONArray;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 460
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->w:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$u;->a:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/octopus/ad/a/c$u;->q:J

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$k;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->r:Lcom/octopus/ad/a/c$k;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$l;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->s:Lcom/octopus/ad/a/c$l;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$m;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$m;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 34
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$m;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    new-instance v3, Lcom/octopus/ad/internal/i;

    invoke-direct {v3, v2}, Lcom/octopus/ad/internal/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/octopus/ad/internal/c/d;->b()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v0}, Lcom/octopus/ad/a/c$u;->b(Ljava/util/List;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$m;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 40
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    new-instance v1, Lcom/octopus/ad/internal/i;

    invoke-direct {v1, v0}, Lcom/octopus/ad/internal/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/octopus/ad/internal/c/d;->b()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$z;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->t:Lcom/octopus/ad/a/c$z;

    return-void
.end method

.method public a(Lcom/octopus/ad/a/h;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->u:Lcom/octopus/ad/a/h;

    return-void
.end method

.method public a(Lcom/octopus/ad/model/ShakeValue;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->v:Lcom/octopus/ad/model/ShakeValue;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$w;",
            ">;)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->w:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->x:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$u;->j:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$u;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$u;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$u;->k:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/a/c$u;->i:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->d:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$u;->l:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->f:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "logReportFlag"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$u;->j:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$u;->h:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->g:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$u;->m:Z

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/c$u;->i:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/a/c$u;->e:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$u;->o:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/a/c$u;->p:Z

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$u;->k:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$u;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$u;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->n:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$u;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/a/c$u;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public q()Lcom/octopus/ad/a/c$k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->r:Lcom/octopus/ad/a/c$k;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Lcom/octopus/ad/a/c$l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->s:Lcom/octopus/ad/a/c$l;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Lcom/octopus/ad/a/c$z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->t:Lcom/octopus/ad/a/c$z;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Lcom/octopus/ad/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->u:Lcom/octopus/ad/a/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Lcom/octopus/ad/model/ShakeValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->v:Lcom/octopus/ad/model/ShakeValue;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->x:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/octopus/ad/a/c$w;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/a/c$u;->w:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
