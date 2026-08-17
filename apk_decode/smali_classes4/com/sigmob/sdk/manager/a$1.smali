.class Lcom/sigmob/sdk/manager/a$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/manager/a;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/manager/a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/manager/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/manager/a$1;->a:Lcom/sigmob/sdk/manager/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/sigmob/sdk/manager/a;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/manager/a$1;->a:Lcom/sigmob/sdk/manager/a;

    invoke-static {v1}, Lcom/sigmob/sdk/manager/a;->a(Lcom/sigmob/sdk/manager/a;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/manager/a$1;->a:Lcom/sigmob/sdk/manager/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/manager/a;->a(Lcom/sigmob/sdk/manager/a;J)J

    iget-object v1, p0, Lcom/sigmob/sdk/manager/a$1;->a:Lcom/sigmob/sdk/manager/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sigmob/sdk/manager/a;->a(Lcom/sigmob/sdk/manager/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/manager/a$1;->a:Lcom/sigmob/sdk/manager/a;

    invoke-static {v1}, Lcom/sigmob/sdk/manager/a;->b(Lcom/sigmob/sdk/manager/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/manager/a$1;->a:Lcom/sigmob/sdk/manager/a;

    invoke-static {v2}, Lcom/sigmob/sdk/manager/a;->c(Lcom/sigmob/sdk/manager/a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_start"

    const-string v4, "0"

    invoke-static {v3, v1, v4, v2}, Lcom/sigmob/sdk/base/mta/PointEntityActive;->ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntityActive;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sigmob/sdk/manager/a$1;->a:Lcom/sigmob/sdk/manager/a;

    invoke-static {v3}, Lcom/sigmob/sdk/manager/a;->c(Lcom/sigmob/sdk/manager/a;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget-object v5, p0, Lcom/sigmob/sdk/manager/a$1;->a:Lcom/sigmob/sdk/manager/a;

    invoke-static {v5}, Lcom/sigmob/sdk/manager/a;->b(Lcom/sigmob/sdk/manager/a;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "session_end"

    invoke-static {v2, v5, v3, v1}, Lcom/sigmob/sdk/base/mta/PointEntityActive;->ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntityActive;

    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/manager/a$1;->a:Lcom/sigmob/sdk/manager/a;

    invoke-static {v1, v0}, Lcom/sigmob/sdk/manager/a;->a(Lcom/sigmob/sdk/manager/a;Z)Z

    return-void
.end method
