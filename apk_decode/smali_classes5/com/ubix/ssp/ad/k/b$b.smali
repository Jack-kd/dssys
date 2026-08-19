.class Lcom/ubix/ssp/ad/k/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/e0/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/b;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/ubix/ssp/ad/k/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/b;Ljava/util/HashMap;Ljava/util/HashMap;JI)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/k/b$b;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/ubix/ssp/ad/k/b$b;->b:Ljava/util/HashMap;

    iput-wide p4, p0, Lcom/ubix/ssp/ad/k/b$b;->c:J

    iput p6, p0, Lcom/ubix/ssp/ad/k/b$b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;I)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->N()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    :goto_0
    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/k/b;->c(Lcom/ubix/ssp/ad/k/b;Z)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->a:Ljava/util/HashMap;

    const-string v1, "tx_server_extra"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRewardDialogStatus,denied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->b:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ubix/ssp/ad/k/b$b;->c:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "EVENT_DURATION"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->b:Ljava/util/HashMap;

    const-string v1, "EVENT_STATUS_MSG"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->k(Lcom/ubix/ssp/ad/k/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    sget-object v1, Lcom/ubix/ssp/ad/e/w/j;->F:Lcom/ubix/ssp/ad/e/w/j;

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b$b;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    iget v4, p0, Lcom/ubix/ssp/ad/k/b$b;->d:I

    invoke-static {v3, v4}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/ubix/ssp/ad/e/w/e;->a(Lcom/ubix/ssp/ad/e/w/j;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p2, p1, p3}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/k/b;->P()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;I)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/k/b;->c(Lcom/ubix/ssp/ad/k/b;Z)Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->a:Ljava/util/HashMap;

    const-string v1, "tx_server_extra"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRewardDialogStatus,confirmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/k/b;->f(Lcom/ubix/ssp/ad/k/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/k/b;->l(Lcom/ubix/ssp/ad/k/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->b:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ubix/ssp/ad/k/b$b;->c:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "EVENT_DURATION"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->j(Lcom/ubix/ssp/ad/k/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    sget-object v1, Lcom/ubix/ssp/ad/e/w/j;->E:Lcom/ubix/ssp/ad/e/w/j;

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b$b;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    iget v4, p0, Lcom/ubix/ssp/ad/k/b$b;->d:I

    invoke-static {v3, v4}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ubix/ssp/ad/e/w/e;->a(Lcom/ubix/ssp/ad/e/w/j;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$b;->e:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/k/b;->P()V

    return-void
.end method
