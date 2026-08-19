.class Lcom/ubix/ssp/ad/e/a0/e0/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/e0/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/e0/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/e0/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$a;->a:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$a;->a:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/e0/a;->a(Lcom/ubix/ssp/ad/e/a0/e0/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$a;->a:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/e0/a;->b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/e0/a$a;->a:Lcom/ubix/ssp/ad/e/a0/e0/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/e0/a;->b(Lcom/ubix/ssp/ad/e/a0/e0/a;)Lcom/ubix/ssp/ad/e/a0/e0/a$c;

    move-result-object v0

    const-string v2, "\u5956\u52b1\u4e0b\u53d1\u8d85\u65f6"

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    const-string v2, "timeout"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/e0/a$c;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 2
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
