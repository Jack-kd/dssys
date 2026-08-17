.class public Lcom/meishu/sdk/core/loader/cache/b;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method public final a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 225
    const-string v6, "__P__"

    const-string v7, "__TIMEOUT__"

    const-string v0, "__ACCEPT_ID__"

    const-string v1, "__STRATEGY_DEALID__"

    const-string v2, "__ACCEPT_APPID__"

    const-string v3, "__ACCEPT_PID__"

    const-string v4, "__SDK__"

    const-string v5, "__GROUP_ID__"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 227
    :goto_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getStrategy_dealid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getStrategy_dealid()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 228
    :goto_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 229
    :goto_2
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v6, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 230
    :goto_3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v7, v2

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 231
    :goto_4
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getGroup_id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_5
    move-object v8, v2

    goto :goto_6

    :cond_5
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getGroup_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 232
    :goto_6
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 p1, 0x0

    .line 233
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {p2, v0, p1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 235
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/meishu/sdk/core/loader/cache/a;Ljava/lang/String;JLcom/meishu/sdk/core/domain/SdkMonitor;)V
    .locals 8

    .line 1
    :try_start_0
    iget-boolean v0, p2, Lcom/meishu/sdk/core/loader/cache/a;->e:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object p6, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 3
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getResponUrl()[Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_1

    .line 4
    array-length v0, p6

    if-lez v0, :cond_1

    .line 5
    array-length v0, p6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p6, v1

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-object v3, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 8
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p3, v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p4

    invoke-static {v2, v3, v4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v3}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p1, v2, v3}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_b

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 12
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getMonitorUrl()[Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 14
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 15
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 16
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClickUrl()[Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 18
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 19
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 20
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_active()[Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 22
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 23
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 24
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_inst_start()[Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 26
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 27
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 28
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 30
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 31
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 32
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_start()[Ljava/lang/String;

    move-result-object p1

    .line 33
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 34
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 35
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 36
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_succ()[Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 38
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 39
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 40
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getErrorUrl()[Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 42
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 43
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_complete()[Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 46
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 47
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 48
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_mute()[Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 50
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 51
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 52
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_one_half()[Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 54
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 55
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 56
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_one_quarter()[Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 58
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 59
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 60
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_pause()[Ljava/lang/String;

    move-result-object p1

    .line 61
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 62
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 63
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 64
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_replay()[Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 66
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 67
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 68
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_resume()[Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 70
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 71
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 72
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_start()[Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 74
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 75
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 76
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_three_quarter()[Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 78
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 79
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 80
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_unmute()[Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 82
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 83
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 84
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_fail()[Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 86
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 87
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 88
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_start()[Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 90
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 91
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 92
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_succ()[Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 94
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 95
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 96
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_fail()[Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 98
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 99
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 100
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_start()[Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 102
    invoke-virtual {p0, p1, p3, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 103
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 104
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_succ()[Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 106
    invoke-virtual {p0, p1, p3, p2}, Lcom/meishu/sdk/core/loader/cache/b;->a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    return-void

    :cond_2
    if-eqz p6, :cond_4

    .line 107
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getReq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 108
    :cond_3
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getReq()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 110
    invoke-virtual {p0, v1, v0}, Lcom/meishu/sdk/core/loader/cache/b;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 112
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    goto :goto_3

    .line 114
    :cond_4
    :goto_2
    iget-object v0, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 115
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCache_req()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 117
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string v0, "__PST__"

    const-string v1, "__S__"

    const-string v2, "__PRICE__"

    const/4 v3, 0x2

    const-string v4, "ssp"

    if-eqz p6, :cond_6

    .line 119
    :try_start_1
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getRsp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_4

    .line 120
    :cond_5
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getRsp()Ljava/lang/String;

    move-result-object v5

    .line 121
    iget-object v6, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 122
    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 124
    iget-object v6, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 125
    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->get_s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 126
    iget-object v6, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 127
    invoke-virtual {p0, v6, v5}, Lcom/meishu/sdk/core/loader/cache/b;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    iget-object v6, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 129
    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->get_pst()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 130
    iget-object v7, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 131
    invoke-virtual {v7}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p3, v7}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    iget-object v7, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 133
    invoke-virtual {v7}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, p3, v7}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-static {v6}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v7}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p1, v6, v7}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p4

    invoke-static {v5, v6, v7}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p4

    .line 136
    invoke-static {p4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {p5}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p1, p4, p5}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    goto :goto_5

    .line 137
    :cond_6
    :goto_4
    iget-object v5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 138
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCache_rsp()Ljava/lang/String;

    move-result-object v5

    .line 139
    iget-object v6, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 140
    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p3, v6}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-static {v5}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v6}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p1, v5, v6}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 142
    iget-object v5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 143
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getFinalRsp()Ljava/lang/String;

    move-result-object v5

    .line 144
    iget-object v6, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 145
    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p3, v6}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p4

    invoke-static {v5, v6, v7}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p4

    .line 147
    invoke-static {p4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {p5}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p1, p4, p5}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    const-string p1, "__PRE__"

    if-eqz p6, :cond_8

    .line 148
    :try_start_2
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getImp()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_6

    .line 149
    :cond_7
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getImp()Ljava/lang/String;

    move-result-object p4

    .line 150
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 151
    invoke-virtual {p0, p5, p4}, Lcom/meishu/sdk/core/loader/cache/b;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 152
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 153
    invoke-virtual {p5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result p5

    mul-int/lit8 p5, p5, 0xa

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-static {p5, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, v2, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 155
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 156
    invoke-virtual {p5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result p5

    mul-int/lit8 p5, p5, 0xa

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-static {p5, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p1, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 158
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 159
    invoke-virtual {p5}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p3, p5}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 160
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 161
    invoke-virtual {p5, p4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V

    goto :goto_7

    .line 162
    :cond_8
    :goto_6
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 163
    invoke-virtual {p4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCache_imp()Ljava/lang/String;

    move-result-object p4

    .line 164
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 165
    invoke-virtual {p5}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p3, p5}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 166
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 167
    invoke-virtual {p5, p4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V

    :goto_7
    if-eqz p6, :cond_a

    .line 168
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getClk()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_9

    goto/16 :goto_8

    .line 169
    :cond_9
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getClk()Ljava/lang/String;

    move-result-object p4

    .line 170
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 171
    invoke-virtual {p5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->get_s()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, v1, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 172
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 173
    invoke-virtual {p5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->get_pst()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, v0, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 174
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 175
    invoke-virtual {p5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result p5

    mul-int/lit8 p5, p5, 0xa

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-static {p5, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, v2, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 177
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 178
    invoke-virtual {p5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result p5

    mul-int/lit8 p5, p5, 0xa

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-static {p5, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p1, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 181
    invoke-virtual {p4}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 183
    invoke-virtual {p0, p4, p1}, Lcom/meishu/sdk/core/loader/cache/b;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 185
    invoke-virtual {p4}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 187
    invoke-virtual {p4, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setClk(Ljava/lang/String;)V

    goto :goto_9

    .line 188
    :cond_a
    :goto_8
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 189
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCache_clk()Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 191
    invoke-virtual {p4}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 193
    invoke-virtual {p4, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setClk(Ljava/lang/String;)V

    :goto_9
    if-eqz p6, :cond_d

    .line 194
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getErr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_a

    .line 195
    :cond_b
    invoke-virtual {p6}, Lcom/meishu/sdk/core/domain/SdkMonitor;->getErr()Ljava/lang/String;

    move-result-object p1

    .line 196
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    iget-object p5, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 198
    invoke-virtual {p5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getOriginEcpm()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 200
    invoke-virtual {p4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->get_s()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 202
    invoke-virtual {p4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->get_err_pst()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 203
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 204
    invoke-virtual {p4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->get_err_pst()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_c
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 206
    invoke-virtual {p0, p4, p1}, Lcom/meishu/sdk/core/loader/cache/b;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 208
    invoke-virtual {p4}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 210
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    return-void

    .line 211
    :cond_d
    :goto_a
    iget-object p1, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 212
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCache_err()Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object p4, p2, Lcom/meishu/sdk/core/loader/cache/a;->h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 214
    invoke-virtual {p4}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 216
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 217
    :goto_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a([Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 4

    .line 218
    invoke-virtual {p3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 219
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 220
    aget-object v2, p1, v1

    .line 221
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    invoke-static {v2, p2, v0}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    aput-object v2, p1, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p3, p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->setClickUrl([Ljava/lang/String;)V

    :cond_2
    return-void
.end method
