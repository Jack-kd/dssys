.class Lcom/sigmob/sdk/base/common/am$a$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/am$a;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/am$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/am$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/am$a$1;->a:Lcom/sigmob/sdk/base/common/am$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/sigmob/sdk/manager/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/am$a$1;->a:Lcom/sigmob/sdk/base/common/am$a;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/common/am$a;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/common/am$a;J)J

    :cond_0
    sget-object v1, Lcom/sigmob/sdk/base/common/am;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interactionCompleted#run: foreground = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", foregroundDuration = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/am$a$1;->a:Lcom/sigmob/sdk/base/common/am$a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/common/am$a;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
