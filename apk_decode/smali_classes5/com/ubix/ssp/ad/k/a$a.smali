.class Lcom/ubix/ssp/ad/k/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/a;->setTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/k/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a$a;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$a;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$a;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v1

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    const/4 v2, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/ubix/ssp/ad/g/k/j;->a(IJJ)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$a;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$a;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/g/k/j;->c(I)V

    :cond_1
    return-void
.end method
