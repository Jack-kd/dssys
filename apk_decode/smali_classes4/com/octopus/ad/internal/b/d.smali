.class public Lcom/octopus/ad/internal/b/d;
.super Lcom/octopus/ad/internal/s;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/octopus/ad/internal/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/s;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/octopus/ad/internal/b/d;->a:Ljava/lang/ref/SoftReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/octopus/ad/internal/b/d;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/d;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/b/c;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    const-string v1, "Before execute request manager, you should set ad request!"

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->l()Lcom/octopus/ad/internal/b;

    move-result-object v0

    const v1, 0x13885

    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/b;->a(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/s;->e()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/e;)V

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :goto_0
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/octopus/ad/internal/s;->f()V

    .line 10
    iget-object v0, p0, Lcom/octopus/ad/internal/b/d;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/b/c;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->l()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/b;)V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/octopus/ad/internal/s;->f()V

    .line 20
    iget-object v0, p0, Lcom/octopus/ad/internal/b/d;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/b/c;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->l()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/b;->a(Lcom/octopus/ad/internal/b/b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/f;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/octopus/ad/internal/b/d;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/b/c;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->u()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    sget-object p1, Lcom/octopus/ad/internal/c/f;->e:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->response_no_ads:I

    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/c/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->l()Lcom/octopus/ad/internal/b;

    move-result-object p1

    const v0, 0x138e4

    invoke-interface {p1, v0}, Lcom/octopus/ad/internal/b;->a(I)V

    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->l()Lcom/octopus/ad/NativeAdResponse;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/internal/b/e;

    if-nez v1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/b/e;->f(Z)V

    .line 18
    new-instance v2, Lcom/octopus/ad/internal/b/d$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/octopus/ad/internal/b/d$1;-><init>(Lcom/octopus/ad/internal/b/d;Lcom/octopus/ad/internal/b/c;Lcom/octopus/ad/internal/b/e;Lcom/octopus/ad/internal/b/f;)V

    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/b/d;->a(Lcom/octopus/ad/internal/b/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Lcom/octopus/ad/internal/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/d;->a:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/octopus/ad/internal/b/c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->j()Lcom/octopus/ad/internal/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
