.class public Lcom/fl/saas/adx/base/bean/AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private abFlag:I

.field private customMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private groupId:Ljava/lang/String;

.field private mAdv_id:I

.field private mTagid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->mAdv_id:I

    const-string v0, ""

    iput-object v0, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->mTagid:Ljava/lang/String;

    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;I)Lcom/fl/saas/adx/base/bean/AdInfo;
    .locals 1

    invoke-static {}, Lcom/fl/saas/adx/base/bean/AdInfo;->createEmpty()Lcom/fl/saas/adx/base/bean/AdInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fl/saas/adx/base/bean/AdInfo;->setAdv_id(I)V

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/bean/AdInfo;->setTagid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/fl/saas/adx/base/bean/AdInfo;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/fl/saas/adx/base/bean/AdInfo;->setAbFlag(I)V

    sget-object p0, Lcom/fl/saas/adx/util/DeviceUtil;->customMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/fl/saas/adx/base/bean/AdInfo;->setCustomMap(Ljava/util/concurrent/ConcurrentHashMap;)V

    :cond_0
    return-object v0
.end method

.method public static createEmpty()Lcom/fl/saas/adx/base/bean/AdInfo;
    .locals 1

    new-instance v0, Lcom/fl/saas/adx/base/bean/AdInfo;

    invoke-direct {v0}, Lcom/fl/saas/adx/base/bean/AdInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAbFlag()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->abFlag:I

    return v0
.end method

.method public getAdv_id()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->mAdv_id:I

    return v0
.end method

.method public getCustomMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->customMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getTagid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->mTagid:Ljava/lang/String;

    return-object v0
.end method

.method public setAbFlag(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->abFlag:I

    return-void
.end method

.method public setAdv_id(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->mAdv_id:I

    return-void
.end method

.method public setCustomMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->customMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setTagid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/bean/AdInfo;->mTagid:Ljava/lang/String;

    return-void
.end method
