.class public Lcom/kwad/components/core/innerEc/local/CancelInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x48ed3d00601195ceL


# instance fields
.field private volatile cancelCount:I

.field private volatile lastCancelTsMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized checkAndAdd()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    const-wide/32 v2, 0x5265c00

    .line 7
    .line 8
    .line 9
    div-long/2addr v0, v2

    .line 10
    iget-wide v4, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->lastCancelTsMs:J

    .line 11
    .line 12
    div-long/2addr v4, v2

    .line 13
    cmp-long v0, v0, v4

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->cancelCount:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->cancelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    iput v1, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->cancelCount:I

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->lastCancelTsMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw v0
.end method

.method public getCancelCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->cancelCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastCancelTsMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->lastCancelTsMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    const-string v3, "cancelCount"

    .line 8
    .line 9
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iput v3, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->cancelCount:I

    .line 14
    .line 15
    const-string v3, "lastCancelTsMs"

    .line 16
    .line 17
    invoke-virtual {p1, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    iput-wide v3, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->lastCancelTsMs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    iput v2, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->cancelCount:I

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->lastCancelTsMs:J

    .line 27
    .line 28
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->lastCancelTsMs:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->cancelCount:I

    .line 7
    .line 8
    return-void
.end method

.method public setCancelCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->cancelCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setLastCancelTsMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->lastCancelTsMs:J

    .line 2
    .line 3
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "cancelCount"

    .line 7
    .line 8
    iget v2, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->cancelCount:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "lastCancelTsMs"

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/kwad/components/core/innerEc/local/CancelInfo;->lastCancelTsMs:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    return-object v0
.end method
