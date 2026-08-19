.class Lcom/ubix/ssp/ad/e/b0/e$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/b0/e$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/b0/e$c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/e$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/e$c$a;->a:Lcom/ubix/ssp/ad/e/b0/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$c$a;->a:Lcom/ubix/ssp/ad/e/b0/e$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e$c;->a(Lcom/ubix/ssp/ad/e/b0/e$c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$c$a;->a:Lcom/ubix/ssp/ad/e/b0/e$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e$c;->a(Lcom/ubix/ssp/ad/e/b0/e$c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    iget v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$c$a;->a:Lcom/ubix/ssp/ad/e/b0/e$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e$c;->a(Lcom/ubix/ssp/ad/e/b0/e$c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$c$a;->a:Lcom/ubix/ssp/ad/e/b0/e$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e$c;->a(Lcom/ubix/ssp/ad/e/b0/e$c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getCurrentPositionWhenPlaying()J

    move-result-wide v3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$c$a;->a:Lcom/ubix/ssp/ad/e/b0/e$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e$c;->a(Lcom/ubix/ssp/ad/e/b0/e$c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/e;->getDuration()J

    move-result-wide v5

    const-wide/16 v0, 0x64

    mul-long/2addr v0, v3

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    div-long/2addr v0, v7

    long-to-int v2, v0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$c$a;->a:Lcom/ubix/ssp/ad/e/b0/e$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e$c;->a(Lcom/ubix/ssp/ad/e/b0/e$c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/b0/e;->B:Lcom/ubix/ssp/ad/g/k/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/e$c$a;->a:Lcom/ubix/ssp/ad/e/b0/e$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/e$c;->a(Lcom/ubix/ssp/ad/e/b0/e$c;)Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object v0

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/b0/e;->B:Lcom/ubix/ssp/ad/g/k/j;

    invoke-interface/range {v1 .. v6}, Lcom/ubix/ssp/ad/g/k/j;->a(IJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
