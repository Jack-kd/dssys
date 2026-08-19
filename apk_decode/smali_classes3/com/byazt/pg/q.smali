.class public Lcom/byazt/pg/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/byazt/pg/s;
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0x208,
        0x96
    }
.end annotation

.annotation build Lcom/byazt/ym/ATSKeep;
.end annotation


# instance fields
.field public volatile hp:Ljava/util/function/Function;

.field public volatile l:Lcom/byazt/pg/s;


# direct methods
.method public constructor <init>(Lcom/byazt/pg/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/q;->l:Lcom/byazt/pg/s;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/q;->hp:Ljava/util/function/Function;

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

    iput-object v2, p0, Lcom/byazt/pg/q;->l:Lcom/byazt/pg/s;

    iput-object p1, p0, Lcom/byazt/pg/q;->hp:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/pg/q;->l:Lcom/byazt/pg/s;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/pg/q;->l:Lcom/byazt/pg/s;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/pg/q;->hp:Ljava/util/function/Function;

    return-object p1
.end method

.method public getInitialInstance(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/byazt/pg/q;->l:Lcom/byazt/pg/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/q;->l:Lcom/byazt/pg/s;

    invoke-interface {v0, p1}, Lcom/byazt/pg/s;->getInitialInstance(Landroid/os/Bundle;)Ljava/lang/Object;

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

    iget-object p1, p0, Lcom/byazt/pg/q;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
