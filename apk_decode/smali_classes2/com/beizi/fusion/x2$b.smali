.class Lcom/beizi/fusion/x2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/sd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/x2;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/x2;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/x2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {v0}, Lcom/beizi/fusion/x2;->I(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/ki;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {v0}, Lcom/beizi/fusion/x2;->I(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/ki;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/fusion/fa;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/e2;->e(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {v0, p2, p1}, Lcom/beizi/fusion/x2;->b(Lcom/beizi/fusion/x2;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    sget-object v1, Lcom/beizi/fusion/c2;->b:Lcom/beizi/fusion/c2;

    invoke-static {v0, v1}, Lcom/beizi/fusion/x2;->a(Lcom/beizi/fusion/x2;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    const/4 v0, 0x3

    const-string v1, "3"

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beizi/fusion/rd;

    invoke-static {v2, p1}, Lcom/beizi/fusion/x2;->a(Lcom/beizi/fusion/x2;Lcom/beizi/fusion/rd;)Lcom/beizi/fusion/rd;

    .line 4
    iget-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {p1}, Lcom/beizi/fusion/x2;->D(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/rd;

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {p1, v1, v0}, Lcom/beizi/fusion/x2;->d(Lcom/beizi/fusion/x2;Ljava/lang/String;I)V

    return-void

    .line 6
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {p1}, Lcom/beizi/fusion/x2;->D(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/rd;

    move-result-object p1

    invoke-interface {p1}, Lcom/beizi/fusion/lb;->f()Lcom/beizi/fusion/ob;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-interface {p1}, Lcom/beizi/fusion/ob;->getECPM()I

    move-result p1

    int-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/x2;->a(Lcom/beizi/fusion/x2;D)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {p1}, Lcom/beizi/fusion/x2;->I(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/ki;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {p1}, Lcom/beizi/fusion/x2;->I(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/ki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/fa;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/e2;->e(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {p1}, Lcom/beizi/fusion/x2;->J(Lcom/beizi/fusion/x2;)V

    .line 11
    iget-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {p1}, Lcom/beizi/fusion/x2;->K(Lcom/beizi/fusion/x2;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {p1}, Lcom/beizi/fusion/x2;->b(Lcom/beizi/fusion/x2;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {p1}, Lcom/beizi/fusion/x2;->c(Lcom/beizi/fusion/x2;)V

    :goto_0
    return-void

    .line 14
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/beizi/fusion/x2$b;->a:Lcom/beizi/fusion/x2;

    invoke-static {p1, v1, v0}, Lcom/beizi/fusion/x2;->c(Lcom/beizi/fusion/x2;Ljava/lang/String;I)V

    return-void
.end method
