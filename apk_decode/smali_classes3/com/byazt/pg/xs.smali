.class public Lcom/byazt/pg/xs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/byazt/pg/u;
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0x208,
        0x112
    }
.end annotation

.annotation build Lcom/byazt/ym/ATSKeep;
.end annotation


# instance fields
.field public volatile hp:Ljava/util/function/Function;

.field public volatile l:Lcom/byazt/pg/u;


# direct methods
.method public constructor <init>(Lcom/byazt/pg/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/xs;->hp:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_2

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    if-eqz p1, :cond_1

    iput-object v2, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    iput-object p1, p0, Lcom/byazt/pg/xs;->hp:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/pg/xs;->hp:Ljava/util/function/Function;

    return-object p1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    invoke-interface {v0}, Lcom/byazt/pg/u;->clear()V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/xs;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/byazt/ow/w;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    invoke-interface {v0, p1}, Lcom/byazt/pg/u;->get(Ljava/lang/String;)Lcom/byazt/ow/w;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/xs;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/byazt/ow/a;

    invoke-direct {v0, p1}, Lcom/byazt/ow/a;-><init>(Ljava/util/function/Function;)V

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/byazt/ow/w;

    return-object p1
.end method

.method public get(Ljava/lang/String;I)Lcom/byazt/ow/w;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    invoke-interface {v0, p1, p2}, Lcom/byazt/pg/u;->get(Ljava/lang/String;I)Lcom/byazt/ow/w;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/xs;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/byazt/ow/a;

    invoke-direct {p2, p1}, Lcom/byazt/ow/a;-><init>(Ljava/util/function/Function;)V

    move-object p1, p2

    :cond_1
    check-cast p1, Lcom/byazt/ow/w;

    return-object p1
.end method

.method public getEncrypt(I)Lcom/byazt/ow/jx;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    invoke-interface {v0, p1}, Lcom/byazt/pg/u;->getEncrypt(I)Lcom/byazt/ow/jx;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/xs;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/byazt/ow/j;

    invoke-direct {v0, p1}, Lcom/byazt/ow/j;-><init>(Ljava/util/function/Function;)V

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/byazt/ow/jx;

    return-object p1
.end method

.method public store()V
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/xs;->l:Lcom/byazt/pg/u;

    invoke-interface {v0}, Lcom/byazt/pg/u;->store()V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/xs;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
