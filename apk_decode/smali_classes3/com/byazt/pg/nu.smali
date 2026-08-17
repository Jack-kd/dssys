.class public Lcom/byazt/pg/nu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/byazt/pg/ud;
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0x208,
        0x222
    }
.end annotation

.annotation build Lcom/byazt/ym/ATSKeep;
.end annotation


# instance fields
.field public volatile hp:Ljava/util/function/Function;

.field public volatile l:Lcom/byazt/pg/ud;


# direct methods
.method public constructor <init>(Lcom/byazt/pg/ud;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/nu;->l:Lcom/byazt/pg/ud;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/nu;->hp:Ljava/util/function/Function;

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

    iput-object v2, p0, Lcom/byazt/pg/nu;->l:Lcom/byazt/pg/ud;

    iput-object p1, p0, Lcom/byazt/pg/nu;->hp:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/pg/nu;->l:Lcom/byazt/pg/ud;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/pg/nu;->l:Lcom/byazt/pg/ud;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/pg/nu;->hp:Ljava/util/function/Function;

    return-object p1
.end method

.method public getGlobalStorage(Lcom/byazt/pg/hp;Ljava/lang/String;)Lcom/byazt/ctq/jx;
    .locals 4

    iget-object v0, p0, Lcom/byazt/pg/nu;->l:Lcom/byazt/pg/ud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/nu;->l:Lcom/byazt/pg/ud;

    invoke-interface {v0, p1, p2}, Lcom/byazt/pg/ud;->getGlobalStorage(Lcom/byazt/pg/hp;Ljava/lang/String;)Lcom/byazt/ctq/jx;

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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/byazt/pg/hp;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/nu;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/byazt/ctq/j;

    invoke-direct {p2, p1}, Lcom/byazt/ctq/j;-><init>(Ljava/util/function/Function;)V

    move-object p1, p2

    :cond_2
    check-cast p1, Lcom/byazt/ctq/jx;

    return-object p1
.end method

.method public getLayerIsolateStore(Lcom/byazt/pg/hp;Ljava/lang/String;)Lcom/byazt/ctq/w;
    .locals 4

    iget-object v0, p0, Lcom/byazt/pg/nu;->l:Lcom/byazt/pg/ud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/nu;->l:Lcom/byazt/pg/ud;

    invoke-interface {v0, p1, p2}, Lcom/byazt/pg/ud;->getLayerIsolateStore(Lcom/byazt/pg/hp;Ljava/lang/String;)Lcom/byazt/ctq/w;

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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/byazt/pg/hp;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/nu;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/byazt/ctq/a;

    invoke-direct {p2, p1}, Lcom/byazt/ctq/a;-><init>(Ljava/util/function/Function;)V

    move-object p1, p2

    :cond_2
    check-cast p1, Lcom/byazt/ctq/w;

    return-object p1
.end method

.method public getVersionIsolateStore(Lcom/byazt/pg/hp;Ljava/lang/String;)Lcom/byazt/ctq/eb;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/nu;->l:Lcom/byazt/pg/ud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/nu;->l:Lcom/byazt/pg/ud;

    invoke-interface {v0, p1, p2}, Lcom/byazt/pg/ud;->getVersionIsolateStore(Lcom/byazt/pg/hp;Ljava/lang/String;)Lcom/byazt/ctq/eb;

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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/byazt/pg/hp;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/nu;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/byazt/ctq/s;

    invoke-direct {p2, p1}, Lcom/byazt/ctq/s;-><init>(Ljava/util/function/Function;)V

    move-object p1, p2

    :cond_2
    check-cast p1, Lcom/byazt/ctq/eb;

    return-object p1
.end method
