.class public final Lcom/kwad/sdk/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static auj:I = 0x0

.field public static vL:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static J(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/sdk/a/a/a/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/a/a/a/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Lcom/kwad/sdk/a/a/a/b;->m(J)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    sget v1, Lcom/kwad/sdk/a/a/a/b;->auj:I

    .line 18
    .line 19
    add-int/2addr v1, v2

    .line 20
    sput v1, Lcom/kwad/sdk/a/a/a/b;->auj:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sput v2, Lcom/kwad/sdk/a/a/a/b;->auj:I

    .line 24
    .line 25
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    sput-wide v1, Lcom/kwad/sdk/a/a/a/b;->vL:J

    .line 30
    .line 31
    sget v3, Lcom/kwad/sdk/a/a/a/b;->auj:I

    .line 32
    .line 33
    iput v3, v0, Lcom/kwad/sdk/a/a/a/a;->auj:I

    .line 34
    .line 35
    iput-wide v1, v0, Lcom/kwad/sdk/a/a/a/a;->kd:J

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p0, v0}, Lcom/kwad/sdk/utils/ai;->at(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static dV()I
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/a/a/a/b;->m(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput v0, Lcom/kwad/sdk/a/a/a/b;->auj:I

    .line 13
    .line 14
    :cond_0
    sget v0, Lcom/kwad/sdk/a/a/a/b;->auj:I

    .line 15
    .line 16
    return v0
.end method

.method private static ir()J
    .locals 4

    .line 1
    sget-wide v0, Lcom/kwad/sdk/a/a/a/b;->vL:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vv()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_0
    new-instance v1, Lcom/kwad/sdk/a/a/a/a;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/kwad/sdk/a/a/a/a;-><init>()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 33
    .line 34
    .line 35
    iget-wide v2, v1, Lcom/kwad/sdk/a/a/a/a;->kd:J

    .line 36
    .line 37
    sput-wide v2, Lcom/kwad/sdk/a/a/a/b;->vL:J

    .line 38
    .line 39
    iget v0, v1, Lcom/kwad/sdk/a/a/a/a;->auj:I

    .line 40
    .line 41
    sput v0, Lcom/kwad/sdk/a/a/a/b;->auj:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-wide v0, Lcom/kwad/sdk/a/a/a/b;->vL:J

    .line 49
    .line 50
    :cond_1
    return-wide v0
.end method

.method private static m(J)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/kwad/sdk/a/a/a/b;->ir()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    cmp-long v0, p0, v2

    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/a/a/a/b;->ir()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    const-wide v4, 0x92a9caa8L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    div-long/2addr v2, v4

    .line 27
    div-long/2addr p0, v4

    .line 28
    cmp-long p0, v2, p0

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_1
    :goto_0
    return v1
.end method
