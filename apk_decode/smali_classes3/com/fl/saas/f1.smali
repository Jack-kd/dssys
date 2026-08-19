.class public abstract Lcom/fl/saas/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/f1$a;
    }
.end annotation


# direct methods
.method public static a(D)Lcom/fl/saas/f1$a;
    .locals 6

    .line 1
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isDeveloperOptionsEnabled(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isNetworkProxyEnabled(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isVPNConnected(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    cmpl-double v2, p0, v0

    .line 36
    .line 37
    if-lez v2, :cond_1

    .line 38
    .line 39
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 40
    .line 41
    cmpg-double v2, p0, v4

    .line 42
    .line 43
    if-gez v2, :cond_1

    .line 44
    .line 45
    new-instance v0, Ljava/util/Random;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    mul-double/2addr v0, v4

    .line 55
    cmpl-double v2, v0, p0

    .line 56
    .line 57
    if-ltz v2, :cond_1

    .line 58
    .line 59
    new-instance p0, Lcom/fl/saas/f1$a;

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    const-string v0, ""

    .line 63
    .line 64
    invoke-direct {p0, p1, v0}, Lcom/fl/saas/f1$a;-><init>(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_1
    new-instance v2, Lcom/fl/saas/f1$a;

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, "_"

    .line 79
    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {v2, v3, p0}, Lcom/fl/saas/f1$a;-><init>(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    :cond_2
    :goto_0
    new-instance p0, Lcom/fl/saas/f1$a;

    .line 95
    .line 96
    const-string p1, "developer"

    .line 97
    .line 98
    invoke-direct {p0, v3, p1}, Lcom/fl/saas/f1$a;-><init>(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object p0
.end method
