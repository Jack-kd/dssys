.class public Lcom/byazt/vbz/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/byazt/vbz/hp;
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0x838,
        0x22
    }
.end annotation

.annotation build Lcom/byazt/ym/ATSKeep;
.end annotation


# instance fields
.field public volatile hp:Ljava/util/function/Function;

.field public volatile l:Lcom/byazt/vbz/hp;


# direct methods
.method public constructor <init>(Lcom/byazt/vbz/hp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/vbz/l;->hp:Ljava/util/function/Function;

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

    iput-object v2, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    iput-object p1, p0, Lcom/byazt/vbz/l;->hp:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/vbz/l;->hp:Ljava/util/function/Function;

    return-object p1
.end method

.method public getAdnKeySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    invoke-interface {v0}, Lcom/byazt/vbz/hp;->getAdnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/vbz/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getAdnStatusMap()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    invoke-interface {v0}, Lcom/byazt/vbz/hp;->getAdnStatusMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/vbz/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getAndUpdateInitStatus(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    invoke-interface {v0, p1}, Lcom/byazt/vbz/hp;->getAndUpdateInitStatus(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/vbz/l;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getDexPluginStrategy(Ljava/lang/String;)Lcom/byazt/vbz/jx;
    .locals 3

    iget-object v0, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/vbz/l;->l:Lcom/byazt/vbz/hp;

    invoke-interface {v0, p1}, Lcom/byazt/vbz/hp;->getDexPluginStrategy(Ljava/lang/String;)Lcom/byazt/vbz/jx;

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

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/vbz/l;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/byazt/vbz/j;

    invoke-direct {v0, p1}, Lcom/byazt/vbz/j;-><init>(Ljava/util/function/Function;)V

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/byazt/vbz/jx;

    return-object p1
.end method
