.class public Lcom/meishu/sdk/core/utils/m0;
.super Lcom/meishu/sdk/core/service/a;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:J

.field public c:J

.field public d:J

.field public e:Z

.field public volatile f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/meishu/sdk/core/utils/m0;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/meishu/sdk/core/service/a;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/m0;->a:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/meishu/sdk/core/utils/m0;->b:J

    .line 5
    iput-wide v0, p0, Lcom/meishu/sdk/core/utils/m0;->c:J

    .line 6
    iput-wide v0, p0, Lcom/meishu/sdk/core/utils/m0;->d:J

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, p0, Lcom/meishu/sdk/core/utils/m0;->e:Z

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/meishu/sdk/core/utils/m0;->f:Ljava/lang/Boolean;

    .line 9
    iput-boolean p3, p0, Lcom/meishu/sdk/core/utils/m0;->a:Z

    .line 10
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    move-result-object p3

    new-instance v2, Lcom/meishu/sdk/core/utils/m0$a;

    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/utils/m0$a;-><init>(Lcom/meishu/sdk/core/utils/m0;)V

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x384

    :goto_0
    invoke-virtual {p3, v2, p1, p2}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static a(Lcom/meishu/sdk/core/utils/m0;Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/utils/m0;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/meishu/sdk/core/utils/m0;->d:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    :cond_0
    sget-boolean v0, Lcom/meishu/sdk/core/service/d;->e:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p0;->a(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Lcom/meishu/sdk/core/utils/o0;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/meishu/sdk/core/utils/o0;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/meishu/sdk/core/service/d;->a(Lcom/meishu/sdk/core/service/e;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/meishu/sdk/core/service/d;->b(Lcom/meishu/sdk/core/service/e;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static synthetic b(Lcom/meishu/sdk/core/utils/m0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/utils/m0;->e:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public onActivityPause(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/meishu/sdk/core/utils/m0;->b:J

    .line 6
    .line 7
    const-string p1, "OpenAppDialogStateChecker"

    .line 8
    .line 9
    const-string v0, "onActivityPause"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/meishu/sdk/core/utils/m0;->c:J

    .line 6
    .line 7
    const-string p1, "onActivityResume"

    .line 8
    .line 9
    const-string v0, "OpenAppDialogStateChecker"

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-wide v1, p0, Lcom/meishu/sdk/core/utils/m0;->b:J

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long p1, v1, v3

    .line 19
    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    iget-wide v3, p0, Lcom/meishu/sdk/core/utils/m0;->c:J

    .line 23
    .line 24
    cmp-long p1, v3, v1

    .line 25
    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/m0;->f:Ljava/lang/Boolean;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    const-string p1, "dialog close"

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Lcom/meishu/sdk/core/utils/n0;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/utils/n0;-><init>(Lcom/meishu/sdk/core/utils/m0;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v1, 0x96

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/meishu/sdk/core/service/d;->b(Lcom/meishu/sdk/core/service/e;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onAppStateUpdate(Z)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAppStateUpdate:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "OpenAppDialogStateChecker"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Lcom/meishu/sdk/core/utils/m0;->d:J

    .line 34
    .line 35
    :goto_0
    const/4 p1, 0x1

    .line 36
    return p1
.end method
