.class public Lcom/meishu/sdk/platform/ms/splash/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:D

.field public q:D

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:J


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
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/c;->h:I

    .line 6
    .line 7
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/c;->m:I

    .line 8
    .line 9
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/c;->n:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/splash/c;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "last_dynamic_time"

    .line 12
    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    sub-long/2addr v4, v2

    .line 24
    iget v0, p0, Lcom/meishu/sdk/platform/ms/splash/c;->l:I

    .line 25
    .line 26
    mul-int/lit16 v0, v0, 0x3e8

    .line 27
    .line 28
    int-to-long v2, v0

    .line 29
    cmp-long v0, v4, v2

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :cond_1
    return v1
.end method

.method public b()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/utils/v0;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/c;->i:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-wide v2, p0, Lcom/meishu/sdk/platform/ms/splash/c;->j:J

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/meishu/sdk/core/utils/v0$a;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-boolean v0, v0, Lcom/meishu/sdk/core/utils/v0$a;->b:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/c;->k:Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->getPower()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/c;->k:Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->getPtime()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-lez v1, :cond_1

    .line 52
    .line 53
    iget v2, p0, Lcom/meishu/sdk/platform/ms/splash/c;->d:I

    .line 54
    .line 55
    if-ge v0, v2, :cond_1

    .line 56
    .line 57
    iput v1, p0, Lcom/meishu/sdk/platform/ms/splash/c;->l:I

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcom/meishu/sdk/platform/ms/splash/c;->r:Z

    .line 61
    .line 62
    if-lt v0, v1, :cond_1

    .line 63
    .line 64
    const/16 v1, 0x64

    .line 65
    .line 66
    if-gt v0, v1, :cond_1

    .line 67
    .line 68
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/c;->o:I

    .line 69
    .line 70
    int-to-double v0, v0

    .line 71
    const-wide v2, 0x4046800000000000L    # 45.0

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    mul-double/2addr v0, v2

    .line 77
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 78
    .line 79
    div-double/2addr v0, v2

    .line 80
    iput-wide v0, p0, Lcom/meishu/sdk/platform/ms/splash/c;->p:D

    .line 81
    .line 82
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 83
    .line 84
    cmpg-double v0, v0, v2

    .line 85
    .line 86
    if-gez v0, :cond_1

    .line 87
    .line 88
    iput-wide v2, p0, Lcom/meishu/sdk/platform/ms/splash/c;->p:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    :cond_1
    :goto_0
    return-void

    .line 91
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/platform/ms/splash/c;->n:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/meishu/sdk/platform/ms/splash/c;->n:I

    .line 6
    .line 7
    return-void
.end method
