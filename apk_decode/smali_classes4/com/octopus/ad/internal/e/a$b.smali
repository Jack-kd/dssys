.class Lcom/octopus/ad/internal/e/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/a;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/octopus/ad/internal/b/b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/octopus/ad/internal/e/a$b;->b:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/e/a$b;)Lcom/octopus/ad/internal/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a$b;->c:Lcom/octopus/ad/internal/b/b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/e/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/e/a;->f(Lcom/octopus/ad/internal/e/a;Z)Z

    .line 36
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->K(Lcom/octopus/ad/internal/e/a;)V

    .line 37
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->v(Lcom/octopus/ad/internal/e/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->ac()V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/e/a$b$3;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/e/a$b$3;-><init>(Lcom/octopus/ad/internal/e/a$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/e/a$b$2;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/e/a$b$2;-><init>(Lcom/octopus/ad/internal/e/a$b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/e/a$b$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/octopus/ad/internal/e/a$b$5;-><init>(Lcom/octopus/ad/internal/e/a$b;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/b;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->c:Lcom/octopus/ad/internal/b/b;

    .line 3
    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->a()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->f:Lcom/octopus/ad/internal/p;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->a()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->g:Lcom/octopus/ad/internal/p;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->a()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->b:Lcom/octopus/ad/internal/p;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    iget-object v0, v0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/e/a;->e(Lcom/octopus/ad/internal/e/a;Z)Z

    .line 6
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->F(Lcom/octopus/ad/internal/e/a;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object v0

    const v2, 0x138e4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->r()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/e/a$b;->a(I)V

    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->G(Lcom/octopus/ad/internal/e/a;)V

    .line 10
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->H(Lcom/octopus/ad/internal/e/a;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/f;)V

    :cond_1
    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->setPrice(I)V

    .line 14
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->setTagId(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/e/a;->setValidTime(J)V

    .line 16
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->l()V

    .line 17
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    move-result-object p1

    sget-object v0, Lcom/octopus/ad/internal/p;->e:Lcom/octopus/ad/internal/p;

    if-ne p1, v0, :cond_3

    .line 18
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->w()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/e/a;->a(Ljava/util/HashMap;)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->b:Landroid/os/Handler;

    new-instance v0, Lcom/octopus/ad/internal/e/a$b$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/e/a$b$1;-><init>(Lcom/octopus/ad/internal/e/a$b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 20
    :cond_4
    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/e/a$b;->a(I)V

    return-void

    :cond_5
    const p1, 0x138e7

    .line 21
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/e/a$b;->a(I)V

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/e/c;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getCreativeWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->setCreativeWidth(I)V

    .line 23
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getCreativeHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->setCreativeHeight(I)V

    .line 24
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/e/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    const-string p1, "OctopusAd_Time"

    const-string v0, "Displayable"

    invoke-static {p1, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/octopus/ad/internal/e/a;->r:Z

    .line 27
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->I(Lcom/octopus/ad/internal/e/a;)V

    .line 28
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->n()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->a(Z)V

    .line 30
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->b()V

    .line 32
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->J(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/e/a$c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/b/f;Lcom/octopus/ad/internal/e/a$c;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/octopus/ad/internal/e/a$b$4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/e/a$b$4;-><init>(Lcom/octopus/ad/internal/e/a$b;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
