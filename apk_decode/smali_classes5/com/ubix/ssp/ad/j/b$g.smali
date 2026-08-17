.class Lcom/ubix/ssp/ad/j/b$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/b;->a(JLjava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/ubix/ssp/ad/j/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/b;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b$g;->b:Lcom/ubix/ssp/ad/j/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/j/b$g;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    const-string v0, "1111 onFinish"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/j/b$g;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/j/b;->c(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/d/a;

    move-result-object v2

    iget-object v4, p0, Lcom/ubix/ssp/ad/j/b$g;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$g;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->d(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/d/a;

    move-result-object v0

    iget v5, v0, Lcom/ubix/ssp/ad/d/a;->o:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$g;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->e(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->o()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    :goto_0
    move v6, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v3, 0x1

    invoke-static/range {v1 .. v7}, Lcom/ubix/ssp/ad/j/b;->a(Lcom/ubix/ssp/ad/j/b;Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IZLcom/ubix/ssp/ad/g/c;)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$g;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->f(Lcom/ubix/ssp/ad/j/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1111 onTick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
