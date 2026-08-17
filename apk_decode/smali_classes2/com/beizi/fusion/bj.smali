.class public Lcom/beizi/fusion/bj;
.super Lcom/beizi/fusion/l3;
.source "SourceFile"


# instance fields
.field private P:Lcom/beizi/fusion/ni;

.field private Q:Ljava/lang/String;

.field private R:Lcom/beizi/fusion/pi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    sget-object p3, Lcom/beizi/fusion/wh;->g:Lcom/beizi/fusion/wh;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/beizi/fusion/l3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/wh;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/bj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->t:Z

    return p0
.end method

.method public static synthetic a(Lcom/beizi/fusion/bj;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/l3;->u:Z

    return p1
.end method

.method public static synthetic b(Lcom/beizi/fusion/bj;)Lcom/beizi/fusion/a5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->r:Lcom/beizi/fusion/a5;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/beizi/fusion/bj;)Lcom/beizi/fusion/ni;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/bj;->P:Lcom/beizi/fusion/ni;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/beizi/fusion/bj;)Lcom/beizi/fusion/pi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/bj;->R:Lcom/beizi/fusion/pi;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/bj;->P:Lcom/beizi/fusion/ni;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 9
    new-instance v1, Lcom/beizi/fusion/bj$b;

    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/bj$b;-><init>(Lcom/beizi/fusion/bj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Lcom/beizi/fusion/ri;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/bj;->R:Lcom/beizi/fusion/pi;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/beizi/fusion/bj$a;

    invoke-direct {v1, p0, p2}, Lcom/beizi/fusion/bj$a;-><init>(Lcom/beizi/fusion/bj;Lcom/beizi/fusion/ri;)V

    invoke-interface {v0, p1, v1}, Lcom/beizi/fusion/pi;->a(Landroid/view/View;Lcom/beizi/fusion/ri;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/ni;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/bj;->P:Lcom/beizi/fusion/ni;

    return-void
.end method

.method public a(Lcom/beizi/fusion/rn;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->P()Lcom/beizi/fusion/pi;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/bj;->R:Lcom/beizi/fusion/pi;

    if-nez v0, :cond_0

    .line 11
    iget-object p1, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 12
    new-instance v0, Lcom/beizi/fusion/bj$c;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/bj$c;-><init>(Lcom/beizi/fusion/bj;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/l3;->e(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/l3;->a(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->j0()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/l3;->b(Z)V

    .line 16
    iget-object p1, p0, Lcom/beizi/fusion/bj;->R:Lcom/beizi/fusion/pi;

    invoke-interface {p1}, Lcom/beizi/fusion/pi;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/bj;->g(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/beizi/fusion/bj;->R:Lcom/beizi/fusion/pi;

    check-cast p1, Lcom/beizi/fusion/d4;

    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->t:Z

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/d4;->e(Z)V

    .line 18
    iget-object p1, p0, Lcom/beizi/fusion/bj;->R:Lcom/beizi/fusion/pi;

    check-cast p1, Lcom/beizi/fusion/d4;

    iget-object v0, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/d4;->e(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 20
    new-instance v0, Lcom/beizi/fusion/bj$d;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/bj$d;-><init>(Lcom/beizi/fusion/bj;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/bj;->Q:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/bj;->Q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
