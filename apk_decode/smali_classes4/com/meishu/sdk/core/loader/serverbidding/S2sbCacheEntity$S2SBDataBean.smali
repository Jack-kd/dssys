.class public Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S2SBDataBean"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private updateTime:J


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


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->platform:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->updateTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->updateTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0x240c8400

    .line 9
    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->platform:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbCacheEntity$S2SBDataBean;->updateTime:J

    .line 2
    .line 3
    return-void
.end method
