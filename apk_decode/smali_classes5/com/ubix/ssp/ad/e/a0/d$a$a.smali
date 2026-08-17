.class Lcom/ubix/ssp/ad/e/a0/d$a$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/d$a;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/d$a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a$a;->a:Lcom/ubix/ssp/ad/e/a0/d$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a$a;->a:Lcom/ubix/ssp/ad/e/a0/d$a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a$a;->a:Lcom/ubix/ssp/ad/e/a0/d$a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/d$a$a;->a:Lcom/ubix/ssp/ad/e/a0/d$a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/a0/d$b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/d$b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPaused"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a$a;->a:Lcom/ubix/ssp/ad/e/a0/d$a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->g(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a$a;->a:Lcom/ubix/ssp/ad/e/a0/d$a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->g(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$e;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/d$e;->b(JZ)V

    :cond_0
    return-void
.end method
