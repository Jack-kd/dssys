.class public Lcom/byazt/pg/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/byazt/pg/hp;
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0x208,
        0x22
    }
.end annotation

.annotation build Lcom/byazt/ym/ATSKeep;
.end annotation


# instance fields
.field public volatile hp:Ljava/util/function/Function;

.field public volatile l:Lcom/byazt/pg/hp;


# direct methods
.method public constructor <init>(Lcom/byazt/pg/hp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

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

    iput-object v2, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    iput-object p1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    return-object p1
.end method

.method public getAgeGroup()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getAgeGroup()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAppChannel()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCustomController()Lcom/byazt/he/l;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getCustomController()Lcom/byazt/he/l;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/byazt/he/jx;

    invoke-direct {v1, v0}, Lcom/byazt/he/jx;-><init>(Ljava/util/function/Function;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/byazt/he/l;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDirectDownloadNetworkType()[I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getDirectDownloadNetworkType()[I

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0, p1}, Lcom/byazt/pg/hp;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInitExtra()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getInitExtra()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getKeywords()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMediationConfig()Lcom/byazt/he/eb;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getMediationConfig()Lcom/byazt/he/eb;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/byazt/he/e;

    invoke-direct {v1, v0}, Lcom/byazt/he/e;-><init>(Ljava/util/function/Function;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/byazt/he/eb;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPluginUpdateConfig()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getPluginUpdateConfig()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSdkApiVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getSdkApiVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p0}, Lcom/byazt/ym/j;->getService(Ljava/lang/String;Lcom/byazt/pg/hp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getThemeStatus()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getThemeStatus()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTitleBarTheme()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getTitleBarTheme()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAllowShowNotify()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->isAllowShowNotify()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDebug()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->isDebug()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPaid()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->isPaid()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPlugin()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->isPlugin()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupportMultiProcess()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->isSupportMultiProcess()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUseMediation()Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0}, Lcom/byazt/pg/hp;->isUseMediation()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public updateInitParams(Landroid/util/SparseArray;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/l;->l:Lcom/byazt/pg/hp;

    invoke-interface {v0, p1}, Lcom/byazt/pg/hp;->updateInitParams(Landroid/util/SparseArray;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/l;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
