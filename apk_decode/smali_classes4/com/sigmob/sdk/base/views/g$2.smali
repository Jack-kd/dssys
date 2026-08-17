.class Lcom/sigmob/sdk/base/views/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/g;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/g;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/g;->a(Lcom/sigmob/sdk/base/views/g;)Lcom/sigmob/sdk/base/common/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/common/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(ZJ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/g;->a(Lcom/sigmob/sdk/base/views/g;)Lcom/sigmob/sdk/base/common/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/b;->b(ZJ)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/g;->e()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/g;->f()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/g;->a(Lcom/sigmob/sdk/base/views/g;)Lcom/sigmob/sdk/base/common/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/common/b;->b(Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/g;->i()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/g;->f()V

    return-void
.end method

.method public b(ZJ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/g;->a(Lcom/sigmob/sdk/base/views/g;)Lcom/sigmob/sdk/base/common/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/b;->b(ZJ)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/g;->h()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/g;->f()V

    return-void
.end method

.method public c(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/g;->a(Lcom/sigmob/sdk/base/views/g;)Lcom/sigmob/sdk/base/common/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/b;->c(ZJ)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/g$2;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/g;->g()V

    return-void
.end method
