.class public Lcom/byazt/pg/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/byazt/pg/o;
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/kj/hp;
    hp = {
        0x0,
        0x1,
        0x208,
        0x29e
    }
.end annotation

.annotation build Lcom/byazt/ym/ATSKeep;
.end annotation


# instance fields
.field public volatile hp:Ljava/util/function/Function;

.field public volatile l:Lcom/byazt/pg/o;


# direct methods
.method public constructor <init>(Lcom/byazt/pg/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

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

    iput-object v2, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    iput-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    return-object p1
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getAndroidId()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppLogDid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getAppLogDid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBoot()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getBoot()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBuildSerial()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getBuildSerial()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCompilingTime()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getCompilingTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConnType()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getConnType()I

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getDeviceModel()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getDeviceName()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType(Z)I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0, p1}, Lcom/byazt/pg/o;->getDeviceType(Z)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getDisplayDensity()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getDisplayDensity()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayDpi()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getDisplayDpi()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getImei(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0, p1}, Lcom/byazt/pg/o;->getImei(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getImsi(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0, p1}, Lcom/byazt/pg/o;->getImsi(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIpv4()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getIpv4()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getIpv6()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getLanguage()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalLanguage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getLocalLanguage()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/byazt/yb/hp;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getLocation()Lcom/byazt/yb/hp;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/byazt/yb/l;

    invoke-direct {v1, v0}, Lcom/byazt/yb/l;-><init>(Ljava/util/function/Function;)V

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/byazt/yb/hp;

    return-object v0
.end method

.method public getMacAddress(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0, p1}, Lcom/byazt/pg/o;->getMacAddress(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMcc()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMcc2()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getMcc2()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMnc2()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getMnc2()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNewIpAddrs(Z)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0, p1}, Lcom/byazt/pg/o;->getNewIpAddrs(Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getOAID(Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0, p1}, Lcom/byazt/pg/o;->getOAID(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOs()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getOs()I

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getOsVersion()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRom()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getRom()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRomInfo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getRomInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSSID(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0, p1}, Lcom/byazt/pg/o;->getSSID(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getScreenHeight()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getScreenHeight()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getScreenWidth()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getTimeZone()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneInt()I
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getTimeZoneInt()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTotalMem()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getTotalMem()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSpace()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getTotalSpace()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUUId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getUUId()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewUA()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0}, Lcom/byazt/pg/o;->getWebViewUA()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWifiMac(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pg/d;->l:Lcom/byazt/pg/o;

    invoke-interface {v0, p1}, Lcom/byazt/pg/o;->getWifiMac(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/pg/d;->hp:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
