.class Lcom/baidu/mobads/sdk/api/BDAdConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/internal/aa$a;


# instance fields
.field final synthetic this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

.field final synthetic val$initStartTime:J


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/BDAdConfig;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->val$initStartTime:J

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
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

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
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

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
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1500(Lcom/baidu/mobads/sdk/api/BDAdConfig;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;->initConfig(Lorg/json/JSONObject;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "permission_module"

    .line 21
    .line 22
    invoke-static {}, Lcom/baidu/mobads/sdk/api/MobadsPermissionSettings;->getPermissionInfo()Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;->onTaskDistribute(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1600(Lcom/baidu/mobads/sdk/api/BDAdConfig;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    cmp-long v2, v2, v4

    .line 43
    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    iget-wide v5, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->val$initStartTime:J

    .line 53
    .line 54
    sub-long/2addr v3, v5

    .line 55
    invoke-static {v2, v3, v4}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1602(Lcom/baidu/mobads/sdk/api/BDAdConfig;J)J

    .line 56
    .line 57
    .line 58
    const-string v2, "init_time"

    .line 59
    .line 60
    iget-object v3, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1600(Lcom/baidu/mobads/sdk/api/BDAdConfig;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v2, "sdk_init_time"

    .line 70
    .line 71
    invoke-interface {v0, v2, v1}, Lcom/baidu/mobads/sdk/api/IXAdContainerFactory;->onTaskDistribute(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1700(Lcom/baidu/mobads/sdk/api/BDAdConfig;)Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/BDAdConfig$1;->this$0:Lcom/baidu/mobads/sdk/api/BDAdConfig;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig;->access$1700(Lcom/baidu/mobads/sdk/api/BDAdConfig;)Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/BDAdConfig$BDAdInitListener;->success()V

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void
.end method
