.class Lcom/ubix/ssp/ad/k/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/z/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/b;->a(IZ)V
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

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v1, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v2, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    iget-object v0, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->j0()I

    move-result v4

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->g(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v3, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v6, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->c(Lcom/ubix/ssp/ad/k/b;)Z

    move-result v8

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 9

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v1, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v2, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    iget-object v0, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->j0()I

    move-result v4

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->i(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v3, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v6, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->c(Lcom/ubix/ssp/ad/k/b;)Z

    move-result v8

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 9

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v1, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v2, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    iget-object v0, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->j0()I

    move-result v4

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->h(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$a;->a:Lcom/ubix/ssp/ad/k/b;

    iget-object v3, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v6, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->c(Lcom/ubix/ssp/ad/k/b;)Z

    move-result v8

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Z

    :cond_0
    return-void
.end method
