.class public Lcom/byazt/pg/hq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/byazt/pg/wv;
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0x208,
        0x9e
    }
.end annotation

.annotation build Lcom/byazt/ym/ATSKeep;
.end annotation


# instance fields
.field public volatile hp:Ljava/util/function/Function;

.field public volatile l:Lcom/byazt/pg/wv;


# direct methods
.method public constructor <init>(Lcom/byazt/pg/wv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

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

    iput-object v2, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    iput-object p1, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

    return-object p1
.end method

.method public createTTLiveVideoPlayer(Landroid/content/Context;ZJLorg/json/JSONObject;Landroid/os/Looper;)Lcom/byazt/um/eb;
    .locals 8

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/byazt/pg/wv;->createTTLiveVideoPlayer(Landroid/content/Context;ZJLorg/json/JSONObject;Landroid/os/Looper;)Lcom/byazt/um/eb;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/byazt/um/q;

    invoke-direct {p2, p1}, Lcom/byazt/um/q;-><init>(Ljava/util/function/Function;)V

    move-object p1, p2

    :cond_1
    check-cast p1, Lcom/byazt/um/eb;

    return-object p1
.end method

.method public createTTVideoPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/um/eb;
    .locals 4

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    invoke-interface {v0, p1, p2}, Lcom/byazt/pg/wv;->createTTVideoPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/um/eb;

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

    invoke-virtual {v0, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/byazt/um/q;

    invoke-direct {p2, p1}, Lcom/byazt/um/q;-><init>(Ljava/util/function/Function;)V

    move-object p1, p2

    :cond_1
    check-cast p1, Lcom/byazt/um/eb;

    return-object p1
.end method

.method public createVideoCacheDir()Lcom/byazt/um/hp;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    invoke-interface {v0}, Lcom/byazt/pg/wv;->createVideoCacheDir()Lcom/byazt/um/hp;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/byazt/um/l;

    invoke-direct {v1, v0}, Lcom/byazt/um/l;-><init>(Ljava/util/function/Function;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/byazt/um/hp;

    return-object v0
.end method

.method public createVideoPreload()Lcom/byazt/um/e;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    invoke-interface {v0}, Lcom/byazt/pg/wv;->createVideoPreload()Lcom/byazt/um/e;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/byazt/um/jl;

    invoke-direct {v1, v0}, Lcom/byazt/um/jl;-><init>(Ljava/util/function/Function;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/byazt/um/e;

    return-object v0
.end method

.method public getLiveSupportCode()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    invoke-interface {v0}, Lcom/byazt/pg/wv;->getLiveSupportCode()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isTTVideoOk()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    invoke-interface {v0}, Lcom/byazt/pg/wv;->isTTVideoOk()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public openDebugLog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    invoke-interface {v0, p1}, Lcom/byazt/pg/wv;->openDebugLog(Z)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public preloadTTVideo(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JZ)V
    .locals 8

    iget-object v0, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/byazt/pg/hq;->l:Lcom/byazt/pg/wv;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/byazt/pg/wv;->preloadTTVideo(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JZ)V

    return-void

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/byazt/pg/hq;->hp:Ljava/util/function/Function;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
