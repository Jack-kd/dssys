.class public Lcom/beizi/fusion/ii$b;
.super Lcom/beizi/fusion/ii$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic f:Lcom/beizi/fusion/ii;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/ii;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/ii$b;->f:Lcom/beizi/fusion/ii;

    .line 2
    .line 3
    const-string v0, "CAROUSEL"

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/beizi/fusion/ii$d;-><init>(Lcom/beizi/fusion/ii;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/beizi/fusion/d6$b;->a(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/ii$b;->f:Lcom/beizi/fusion/ii;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/beizi/fusion/d6;->q:Landroid/view/View;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer$d;->a(Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/d6$b;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/ii$b;->f:Lcom/beizi/fusion/ii;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/beizi/fusion/ii;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/ii$b;->f:Lcom/beizi/fusion/ii;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/beizi/fusion/d6;->p:Lcom/beizi/fusion/d6$b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/beizi/fusion/d6$b;->g()V

    .line 19
    .line 20
    .line 21
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
    iget-object v0, p0, Lcom/beizi/fusion/ii$b;->f:Lcom/beizi/fusion/ii;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/beizi/fusion/d6;->q:Landroid/view/View;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer$d;->j(Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/prefab/ScopeExpressContainer;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
