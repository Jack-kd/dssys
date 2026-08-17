.class public Lcom/byazt/nke/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/byazt/nke/o;
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0x439,
        0x29e
    }
.end annotation

.annotation build Lcom/byazt/ym/ATSKeep;
.end annotation


# instance fields
.field public volatile hp:Ljava/util/function/Function;

.field public volatile l:Lcom/byazt/nke/o;


# direct methods
.method public constructor <init>(Lcom/byazt/nke/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/nke/d;->hp:Ljava/util/function/Function;

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

    iput-object v2, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    iput-object p1, p0, Lcom/byazt/nke/d;->hp:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/nke/d;->hp:Ljava/util/function/Function;

    return-object p1
.end method

.method public clearAllMemoryCache()V
    .locals 3

    iget-object v0, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    invoke-interface {v0}, Lcom/byazt/nke/o;->clearAllMemoryCache()V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/nke/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearMemoryBitmapCache(Lcom/byazt/nke/wv;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    invoke-interface {v0, p1}, Lcom/byazt/nke/o;->clearMemoryBitmapCache(Lcom/byazt/nke/wv;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_1

    new-instance v1, Lcom/byazt/nke/hq;

    invoke-direct {v1, p1}, Lcom/byazt/nke/hq;-><init>(Lcom/byazt/nke/wv;)V

    move-object p1, v1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/nke/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearMemoryRawCache(Lcom/byazt/nke/wv;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    invoke-interface {v0, p1}, Lcom/byazt/nke/o;->clearMemoryRawCache(Lcom/byazt/nke/wv;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_1

    new-instance v1, Lcom/byazt/nke/hq;

    invoke-direct {v1, p1}, Lcom/byazt/nke/hq;-><init>(Lcom/byazt/nke/wv;)V

    move-object p1, v1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/nke/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public from(Lcom/byazt/nke/wv;)Lcom/byazt/nke/k;
    .locals 4

    iget-object v0, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nke/d;->l:Lcom/byazt/nke/o;

    invoke-interface {v0, p1}, Lcom/byazt/nke/o;->from(Lcom/byazt/nke/wv;)Lcom/byazt/nke/k;

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

    new-instance v1, Lcom/byazt/nke/hq;

    invoke-direct {v1, p1}, Lcom/byazt/nke/hq;-><init>(Lcom/byazt/nke/wv;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/nke/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/byazt/nke/v;

    invoke-direct {v0, p1}, Lcom/byazt/nke/v;-><init>(Ljava/util/function/Function;)V

    move-object p1, v0

    :cond_2
    check-cast p1, Lcom/byazt/nke/k;

    return-object p1
.end method
