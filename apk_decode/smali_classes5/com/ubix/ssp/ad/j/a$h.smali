.class Lcom/ubix/ssp/ad/j/a$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/a;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/j/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/a$h;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$h;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->f(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/j/a$l;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(J)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$h;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->d(Lcom/ubix/ssp/ad/j/a;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$h;->a:Lcom/ubix/ssp/ad/j/a;

    long-to-int v1, p1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/j/a;->b(Lcom/ubix/ssp/ad/j/a;I)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$h;->a:Lcom/ubix/ssp/ad/j/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/j/a;->k(I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$h;->a:Lcom/ubix/ssp/ad/j/a;

    long-to-int p1, p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/j/a;->b(Lcom/ubix/ssp/ad/j/a;I)I

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
