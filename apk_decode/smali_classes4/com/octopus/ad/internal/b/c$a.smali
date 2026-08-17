.class Lcom/octopus/ad/internal/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/b;
.implements Lcom/octopus/ad/internal/c/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/octopus/ad/internal/c/j;

.field b:Lcom/octopus/ad/NativeAdResponse;

.field final synthetic c:Lcom/octopus/ad/internal/b/c;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/b/c;Lcom/octopus/ad/internal/b/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/c$a;-><init>(Lcom/octopus/ad/internal/b/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c$a;->b:Lcom/octopus/ad/NativeAdResponse;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->destroy()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/octopus/ad/internal/b/c$a;->b:Lcom/octopus/ad/NativeAdResponse;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 39
    new-instance v0, Lcom/octopus/ad/internal/b/c$a$3;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/b/c$a$3;-><init>(Lcom/octopus/ad/internal/b/c$a;I)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 40
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/c;Z)Z

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/b;)V
    .locals 6

    .line 4
    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->a()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->f:Lcom/octopus/ad/internal/p;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->a()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->b:Lcom/octopus/ad/internal/p;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->a()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->g:Lcom/octopus/ad/internal/p;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x138e7

    .line 5
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/b/c$a;->a(I)V

    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->b()Lcom/octopus/ad/NativeAdResponse;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/octopus/ad/internal/b/c$a;->b:Lcom/octopus/ad/NativeAdResponse;

    .line 8
    move-object v1, v0

    check-cast v1, Lcom/octopus/ad/internal/b/e;

    .line 9
    iget-object v2, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/c;)V

    .line 10
    iget-object v2, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/b/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/b/e;->a(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {v2}, Lcom/octopus/ad/internal/b/c;->b(Lcom/octopus/ad/internal/b/c;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/b/e;->a(Landroid/content/Context;)V

    .line 12
    iget-object v2, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {v2}, Lcom/octopus/ad/internal/b/c;->c(Lcom/octopus/ad/internal/b/c;)Lcom/octopus/ad/internal/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/e;->h()V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/e;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const p1, 0x138e4

    .line 15
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/b/c$a;->a(I)V

    .line 16
    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/e;->g()V

    .line 17
    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/e;->i()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/e;->b()Lcom/octopus/ad/internal/b/f;

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/f;)V

    :cond_3
    :goto_0
    return-void

    .line 19
    :cond_4
    iget-object v2, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/b/c;->b(Lcom/octopus/ad/internal/b/c;Z)Z

    .line 20
    iget-object v2, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/c;J)J

    .line 21
    iget-object v2, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/b/c;->a(I)V

    .line 22
    iget-object v2, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/b/c;->c(Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-interface {p1}, Lcom/octopus/ad/internal/b/b;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/octopus/ad/internal/b/c;->a(J)V

    .line 24
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/octopus/ad/internal/b/c;->f(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/c;->d(Lcom/octopus/ad/internal/b/c;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/c;->e(Lcom/octopus/ad/internal/b/c;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/octopus/ad/internal/b/e;->a(JJ)V

    .line 26
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/c;->f(Lcom/octopus/ad/internal/b/c;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/c;->g(Lcom/octopus/ad/internal/b/c;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 27
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/c;)Lcom/octopus/ad/NativeAdListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 28
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/c;)Lcom/octopus/ad/NativeAdListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/octopus/ad/NativeAdListener;->onAdLoaded(Lcom/octopus/ad/NativeAdResponse;)V

    .line 29
    :cond_5
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/c;Z)Z

    return-void

    .line 30
    :cond_6
    new-instance p1, Lcom/octopus/ad/internal/c/j;

    invoke-direct {p1}, Lcom/octopus/ad/internal/c/j;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->a:Lcom/octopus/ad/internal/c/j;

    .line 31
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/c;->f(Lcom/octopus/ad/internal/b/c;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    new-instance p1, Lcom/octopus/ad/internal/b/c$a$1;

    invoke-direct {p1, p0, v0}, Lcom/octopus/ad/internal/b/c$a$1;-><init>(Lcom/octopus/ad/internal/b/c$a;Lcom/octopus/ad/NativeAdResponse;)V

    .line 33
    iget-object v1, p0, Lcom/octopus/ad/internal/b/c$a;->a:Lcom/octopus/ad/internal/c/j;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/octopus/ad/internal/c/j;->a(Lcom/octopus/ad/internal/c/j$b;Ljava/lang/String;)V

    .line 34
    :cond_7
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/b/c;->g(Lcom/octopus/ad/internal/b/c;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 35
    new-instance p1, Lcom/octopus/ad/internal/b/c$a$2;

    invoke-direct {p1, p0, v0}, Lcom/octopus/ad/internal/b/c$a$2;-><init>(Lcom/octopus/ad/internal/b/c$a;Lcom/octopus/ad/NativeAdResponse;)V

    .line 36
    iget-object v1, p0, Lcom/octopus/ad/internal/b/c$a;->a:Lcom/octopus/ad/internal/c/j;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/octopus/ad/internal/c/j;->a(Lcom/octopus/ad/internal/c/j$b;Ljava/lang/String;)V

    .line 37
    :cond_8
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->a:Lcom/octopus/ad/internal/c/j;

    invoke-virtual {p1, p0}, Lcom/octopus/ad/internal/c/j;->a(Lcom/octopus/ad/internal/c/j$c;)V

    .line 38
    iget-object p1, p0, Lcom/octopus/ad/internal/b/c$a;->a:Lcom/octopus/ad/internal/c/j;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c/j;->a()V

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/e/c;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    return-void
.end method

.method public b()V
    .locals 0

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

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/c;)Lcom/octopus/ad/NativeAdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/c;)Lcom/octopus/ad/NativeAdListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/octopus/ad/internal/b/c$a;->b:Lcom/octopus/ad/NativeAdResponse;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/octopus/ad/NativeAdListener;->onAdLoaded(Lcom/octopus/ad/NativeAdResponse;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/octopus/ad/internal/b/c$a;->a:Lcom/octopus/ad/internal/c/j;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/octopus/ad/internal/b/c$a;->b:Lcom/octopus/ad/NativeAdResponse;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/c;Z)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
