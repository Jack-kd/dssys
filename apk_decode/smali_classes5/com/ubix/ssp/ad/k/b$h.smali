.class Lcom/ubix/ssp/ad/k/b$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/b;->c(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/k/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public b(J)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReturned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;J)J

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->l(Lcom/ubix/ssp/ad/k/b;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->n(Lcom/ubix/ssp/ad/k/b;)J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-lez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/g;

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/k/b;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/g;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->l(Lcom/ubix/ssp/ad/k/b;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    iput-boolean v1, p1, Lcom/ubix/ssp/ad/k/b;->S:Z

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->m(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/g/j;

    move-result-object p1

    if-eqz p1, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1, v2}, Lcom/ubix/ssp/ad/k/b;->c(Lcom/ubix/ssp/ad/k/b;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/k/b;->P()V

    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->l(Lcom/ubix/ssp/ad/k/b;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$h;->a:Lcom/ubix/ssp/ad/k/b;

    iput-boolean v1, p1, Lcom/ubix/ssp/ad/k/b;->S:Z

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->m(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/g/j;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return-void
.end method
