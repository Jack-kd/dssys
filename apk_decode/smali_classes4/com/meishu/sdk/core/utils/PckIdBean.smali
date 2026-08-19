.class public Lcom/meishu/sdk/core/utils/PckIdBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private app_n:Ljava/lang/String;

.field private app_y:Ljava/lang/String;

.field private time:J


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
.method public getApp_n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PckIdBean;->app_n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PckIdBean;->app_y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/utils/PckIdBean;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setApp_n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PckIdBean;->app_n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PckIdBean;->app_y:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/utils/PckIdBean;->time:J

    .line 2
    .line 3
    return-void
.end method
