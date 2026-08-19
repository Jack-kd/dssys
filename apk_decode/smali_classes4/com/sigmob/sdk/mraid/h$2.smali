.class Lcom/sigmob/sdk/mraid/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid/h;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->k()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->e(Lcom/sigmob/sdk/mraid/h;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/mraid/h$a;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(IIIILcom/sigmob/sdk/mraid/b$a;Z)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/sigmob/sdk/mraid/h$a;->a(IIIILcom/sigmob/sdk/mraid/b$a;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/net/URI;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/URI;ILjava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/net/URI;ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/URI;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/mraid/f;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/net/URI;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->c(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Z)V

    return-void
.end method

.method public a(ZLcom/sigmob/sdk/mraid/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sigmob/sdk/mraid/f;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(ZLcom/sigmob/sdk/mraid/p;)V

    return-void
.end method

.method public a(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->j()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/h;->e(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/h$a;->e()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->n()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/h$a;->h()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/h$a;->f()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/h$a;->g()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$2;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid/h$a;->c()V

    :cond_0
    return-void
.end method
