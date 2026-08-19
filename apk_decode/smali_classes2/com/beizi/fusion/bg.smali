.class public final Lcom/beizi/fusion/bg;
.super Lcom/beizi/fusion/k3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/k3;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/beizi/fusion/aj;

    .line 5
    .line 6
    invoke-direct {p2, p1}, Lcom/beizi/fusion/aj;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/beizi/fusion/k3;->a:Lcom/beizi/fusion/l3;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/k3;->a:Lcom/beizi/fusion/l3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Lcom/beizi/fusion/aj;

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 6
    :cond_1
    check-cast v0, Lcom/beizi/fusion/aj;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/aj;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/beizi/fusion/p1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/k3;->a:Lcom/beizi/fusion/l3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v1, v0, Lcom/beizi/fusion/aj;

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 3
    :cond_1
    check-cast v0, Lcom/beizi/fusion/aj;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/aj;->a(Lcom/beizi/fusion/p1;)V

    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/k3;->a:Lcom/beizi/fusion/l3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/l3;->G()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
