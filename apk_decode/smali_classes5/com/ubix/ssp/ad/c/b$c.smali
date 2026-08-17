.class Lcom/ubix/ssp/ad/c/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/v/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/c/b;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/ubix/ssp/ad/b;

.field final synthetic c:Lcom/ubix/ssp/ad/c/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/c/b;Landroid/os/Bundle;Lcom/ubix/ssp/ad/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/c/b$c;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/ubix/ssp/ad/c/b$c;->b:Lcom/ubix/ssp/ad/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/c/b;->a(Lcom/ubix/ssp/ad/c/b;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b$c;->a:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/c/b;->a(Lcom/ubix/ssp/ad/c/b;)Lcom/ubix/ssp/ad/d/a;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/c/b;->a(Lcom/ubix/ssp/ad/c/b;)Lcom/ubix/ssp/ad/d/a;

    move-result-object p2

    iget-object p2, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/c/b;->a(Lcom/ubix/ssp/ad/c/b;)Lcom/ubix/ssp/ad/d/a;

    move-result-object p2

    iget-object p2, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/c/b;->b(Lcom/ubix/ssp/ad/c/b;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/c/b;->a(Lcom/ubix/ssp/ad/c/b;)Lcom/ubix/ssp/ad/d/a;

    move-result-object p2

    iget-object p2, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/y/a/a$b;->t:Ljava/lang/String;

    const-string p4, "AD_SOURCE"

    invoke-virtual {p1, p4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b$c;->b:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/b;->b(Landroid/os/Bundle;)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/c/b;->a(Lcom/ubix/ssp/ad/c/b;)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b$c;->b:Lcom/ubix/ssp/ad/b;

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->z:Ljava/lang/String;

    iget-object v4, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    iget-object v5, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->H:Ljava/lang/String;

    iget-object v6, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->I:Ljava/lang/String;

    iget-wide v7, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->G:J

    invoke-virtual/range {v0 .. v8}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    invoke-virtual {p1, p3}, Lcom/ubix/ssp/ad/c/b;->n(I)V

    return-void

    :cond_2
    const/16 p1, 0xc

    const-string p2, "\u53c2\u6570\u5f02\u5e38"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    invoke-static {p2}, Lcom/ubix/ssp/ad/c/b;->c(Lcom/ubix/ssp/ad/c/b;)I

    move-result p4

    invoke-static {p2, p4}, Lcom/ubix/ssp/ad/c/b;->a(Lcom/ubix/ssp/ad/c/b;I)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    invoke-virtual {p2, p3, p1}, Lcom/ubix/ssp/ad/c/b;->a(ILcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/c/b;->c(Lcom/ubix/ssp/ad/c/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/c/b;->a(Lcom/ubix/ssp/ad/c/b;I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b$c;->c:Lcom/ubix/ssp/ad/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/ubix/ssp/ad/c/b;->a(ILcom/ubix/ssp/open/AdError;)V

    return-void
.end method
