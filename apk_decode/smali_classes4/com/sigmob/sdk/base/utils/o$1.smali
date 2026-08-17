.class Lcom/sigmob/sdk/base/utils/o$1;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/utils/o;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/utils/o;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/utils/o;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/utils/o$1;->a:Lcom/sigmob/sdk/base/utils/o;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    sget-object v0, Lcom/sigmob/sdk/base/utils/o;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "start#onFinish"

    invoke-static {v0, v2, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/o$1;->a:Lcom/sigmob/sdk/base/utils/o;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/utils/o;->a(Lcom/sigmob/sdk/base/utils/o;J)J

    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/o$1;->a:Lcom/sigmob/sdk/base/utils/o;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/o;->a(Lcom/sigmob/sdk/base/utils/o;)Lcom/sigmob/sdk/base/utils/o$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/o$1;->a:Lcom/sigmob/sdk/base/utils/o;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/o;->a(Lcom/sigmob/sdk/base/utils/o;)Lcom/sigmob/sdk/base/utils/o$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/utils/o$a;->onTimerFinished()V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    sget-object v0, Lcom/sigmob/sdk/base/utils/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start#onTick: remainingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/utils/o$1;->a:Lcom/sigmob/sdk/base/utils/o;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/base/utils/o;->a(Lcom/sigmob/sdk/base/utils/o;J)J

    return-void
.end method
