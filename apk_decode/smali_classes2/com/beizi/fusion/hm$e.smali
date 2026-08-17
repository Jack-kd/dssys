.class Lcom/beizi/fusion/hm$e;
.super Lcom/beizi/fusion/ii$h;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/vc;
.implements Lcom/beizi/fusion/wc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic g:Lcom/beizi/fusion/hm;


# direct methods
.method private constructor <init>(Lcom/beizi/fusion/hm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    invoke-direct {p0, p1}, Lcom/beizi/fusion/ii$h;-><init>(Lcom/beizi/fusion/ii;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/hm;Lcom/beizi/fusion/hm$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/hm$e;-><init>(Lcom/beizi/fusion/hm;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/beizi/fusion/hm$c;->a(Lcom/beizi/fusion/hm$c;I)V

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/hm$c;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/beizi/fusion/d6$b;->a(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    invoke-static {p1}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    invoke-static {p1}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    iget-object v0, v0, Lcom/beizi/fusion/d6;->q:Landroid/view/View;

    check-cast v0, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    invoke-static {p1, v0}, Lcom/beizi/fusion/hm$c;->a(Lcom/beizi/fusion/hm$c;Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;)V

    .line 4
    iget-object p1, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    invoke-static {p1}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    move-result-object p1

    invoke-static {p1}, Lcom/beizi/fusion/hm$c;->m(Lcom/beizi/fusion/hm$c;)V

    .line 5
    iget-object p1, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    invoke-static {p1}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    move-result-object p1

    invoke-static {p1}, Lcom/beizi/fusion/hm$c;->n(Lcom/beizi/fusion/hm$c;)I

    move-result p1

    if-gez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    iget-object p1, p1, Lcom/beizi/fusion/d6;->q:Landroid/view/View;

    check-cast p1, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    invoke-static {p1}, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer$d;->b(Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;)Lcom/beizi/fusion/wb;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    move-result-object v0

    invoke-static {v0}, Lcom/beizi/fusion/hm$c;->n(Lcom/beizi/fusion/hm$c;)I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/beizi/fusion/wb;->delayExposure(J)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/ii$h;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PRIMARY"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/beizi/fusion/hm$c;->a(Lcom/beizi/fusion/hm$c;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/hm$c;->o(Lcom/beizi/fusion/hm$c;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/beizi/fusion/hm$c;->n(Lcom/beizi/fusion/hm$c;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-lez v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/beizi/fusion/d6;->q:Landroid/view/View;

    .line 47
    .line 48
    check-cast v0, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer$d;->b(Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;)Lcom/beizi/fusion/wb;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-object v1, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/beizi/fusion/hm$c;->n(Lcom/beizi/fusion/hm$c;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    int-to-long v1, v1

    .line 67
    invoke-interface {v0, v1, v2}, Lcom/beizi/fusion/wb;->delayExposure(J)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/ea;->c()Lcom/beizi/fusion/ga;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/beizi/fusion/aa;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/beizi/fusion/ve;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/beizi/fusion/ve;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/beizi/fusion/ve;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/beizi/fusion/hm$c;->l(Lcom/beizi/fusion/hm$c;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/beizi/fusion/hm$c;->k(Lcom/beizi/fusion/hm$c;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/hm;->a(Lcom/beizi/fusion/hm;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/beizi/fusion/hm$c;->j(Lcom/beizi/fusion/hm$c;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {v0, v1}, Lcom/beizi/fusion/hm$c;->a(Lcom/beizi/fusion/hm$c;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/beizi/fusion/hm$c;->l(Lcom/beizi/fusion/hm$c;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/d6$b;->onAdClicked()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/beizi/fusion/te$a;->b:Lcom/beizi/fusion/te$a;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/beizi/fusion/hm$c;->a(Lcom/beizi/fusion/hm$c;Lcom/beizi/fusion/te$a;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/beizi/fusion/hm$e;->g:Lcom/beizi/fusion/hm;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/beizi/fusion/hm;->c(Lcom/beizi/fusion/hm;)Lcom/beizi/fusion/hm$c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {v0, v1}, Lcom/beizi/fusion/hm$c;->a(Lcom/beizi/fusion/hm$c;Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/ii$h;->onAdClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
