.class Lcom/ubix/ssp/ad/e/a0/g$a;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/g;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/g;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/g;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish-time-remain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g;)J

    move-result-wide v0

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/g;->b(Lcom/ubix/ssp/ad/e/a0/g;)Lcom/ubix/ssp/ad/e/a0/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/g;->b(Lcom/ubix/ssp/ad/e/a0/g;)Lcom/ubix/ssp/ad/e/a0/g$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/g$b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/g;->c(Lcom/ubix/ssp/ad/e/a0/g;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/g;->c(Lcom/ubix/ssp/ad/e/a0/g;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g;Z)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-static {v0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g;J)J

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/g;->b(Lcom/ubix/ssp/ad/e/a0/g;)Lcom/ubix/ssp/ad/e/a0/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/g$a;->a:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/g;->b(Lcom/ubix/ssp/ad/e/a0/g;)Lcom/ubix/ssp/ad/e/a0/g$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/g$b;->a(J)V

    :cond_0
    return-void
.end method
