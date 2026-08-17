.class Lcom/baidu/mobads/sdk/api/BDAdConfig$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/aa$a;


# instance fields
.field final synthetic this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

.field final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/BDAdConfig;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->val$startTime:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1700(Lcom/baidu/mobads/sdk/api/BDAdConfig;)Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1700(Lcom/baidu/mobads/sdk/api/BDAdConfig;)Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;->fail()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/aa;->a()Lcom/baidu/mobads/sdk/internal/aa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/aa;->c()Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1600(Lcom/baidu/mobads/sdk/api/BDAdConfig;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    iget-wide v5, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->val$startTime:J

    .line 35
    .line 36
    sub-long/2addr v3, v5

    .line 37
    invoke-static {v2, v3, v4}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1602(Lcom/baidu/mobads/sdk/api/BDAdConfig;J)J

    .line 38
    .line 39
    .line 40
    const-string v2, "init_time"

    .line 41
    .line 42
    iget-object v3, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1600(Lcom/baidu/mobads/sdk/api/BDAdConfig;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v2, "sdk_init_time"

    .line 52
    .line 53
    invoke-interface {v0, v2, v1}, Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;->onTaskDistribute(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1700(Lcom/baidu/mobads/sdk/api/BDAdConfig;)Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1700(Lcom/baidu/mobads/sdk/api/BDAdConfig;)Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;->success()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$2;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1702(Lcom/baidu/mobads/sdk/api/BDAdConfig;Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;)Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method
