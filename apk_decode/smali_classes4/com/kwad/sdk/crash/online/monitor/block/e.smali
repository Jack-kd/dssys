.class public final Lcom/kwad/sdk/crash/online/monitor/block/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bfi:Lcom/kwad/sdk/crash/online/monitor/a/a;


# direct methods
.method public static Qy()Lcom/kwad/sdk/crash/online/monitor/a/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/crash/online/monitor/block/e;->bfi:Lcom/kwad/sdk/crash/online/monitor/a/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static Qz()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/crash/online/monitor/block/e;->bfi:Lcom/kwad/sdk/crash/online/monitor/a/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/crash/online/monitor/a/a;->QC()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public static d(Lcom/kwad/sdk/crash/online/monitor/a/a;)V
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/crash/online/monitor/a/a;->QF()Z

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const-string v1, "perfMonitor.BlockManager"

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :try_start_1
    const-string p0, "allFuncDisable"

    .line 14
    .line 15
    invoke-static {v1, p0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/crash/online/monitor/block/a;->Qw()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    const-string p0, "!hasBlockMonitor"

    .line 26
    .line 27
    invoke-static {v1, p0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-static {p0}, Lcom/kwad/sdk/crash/online/monitor/block/a;->a(Lcom/kwad/sdk/crash/online/monitor/a/a;)V

    .line 32
    .line 33
    .line 34
    sput-object p0, Lcom/kwad/sdk/crash/online/monitor/block/e;->bfi:Lcom/kwad/sdk/crash/online/monitor/a/a;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Lcom/kwad/sdk/crash/online/monitor/block/a;->bZ(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "hasTenBlockHook:"

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Ljava/util/Random;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    float-to-double v2, v2

    .line 68
    iget-wide v4, p0, Lcom/kwad/sdk/crash/online/monitor/a/a;->aJV:D

    .line 69
    .line 70
    cmpg-double v2, v4, v2

    .line 71
    .line 72
    if-gez v2, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-static {p0}, Lcom/kwad/sdk/crash/online/monitor/block/b;->a(Lcom/kwad/sdk/crash/online/monitor/a/a;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/kwad/sdk/crash/online/monitor/a/a;->QD()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-static {p0}, Lcom/kwad/sdk/crash/online/monitor/block/c;->b(Lcom/kwad/sdk/crash/online/monitor/a/a;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/kwad/sdk/crash/online/monitor/a/a;->QE()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_5

    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    invoke-static {p0}, Lcom/kwad/sdk/crash/online/monitor/block/a;->ca(Z)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "hasOtherBlockMonitor:"

    .line 103
    .line 104
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v1, p0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    :try_start_2
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .line 121
    .line 122
    :catch_0
    :cond_5
    :goto_0
    return-void
.end method
