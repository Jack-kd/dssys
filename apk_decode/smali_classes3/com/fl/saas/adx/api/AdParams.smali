.class public Lcom/fl/saas/adx/api/AdParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/api/AdParams$Builder;
    }
.end annotation


# instance fields
.field private final expressHeight:F

.field private final expressWidth:F

.field private final isMixNative:Z

.field private final key:Ljava/lang/String;

.field private final linkId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/fl/saas/adx/api/AdParams$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/fl/saas/adx/api/AdParams$Builder;->access$000(Lcom/fl/saas/adx/api/AdParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/api/AdParams;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/fl/saas/adx/api/AdParams$Builder;->access$100(Lcom/fl/saas/adx/api/AdParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/api/AdParams;->linkId:Ljava/lang/String;

    invoke-static {p1}, Lcom/fl/saas/adx/api/AdParams$Builder;->access$200(Lcom/fl/saas/adx/api/AdParams$Builder;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->px2dip(F)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/fl/saas/adx/api/AdParams;->expressWidth:F

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/fl/saas/adx/api/AdParams$Builder;->access$200(Lcom/fl/saas/adx/api/AdParams$Builder;)F

    move-result v0

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/api/AdParams$Builder;->access$300(Lcom/fl/saas/adx/api/AdParams$Builder;)F

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/api/AdParams;->expressHeight:F

    invoke-static {p1}, Lcom/fl/saas/adx/api/AdParams$Builder;->access$400(Lcom/fl/saas/adx/api/AdParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fl/saas/adx/api/AdParams;->isMixNative:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fl/saas/adx/api/AdParams$Builder;Lcom/fl/saas/adx/api/AdParams$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/api/AdParams;-><init>(Lcom/fl/saas/adx/api/AdParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getExpressHeight()F
    .locals 2

    iget v0, p0, Lcom/fl/saas/adx/api/AdParams;->expressHeight:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/fl/saas/adx/api/AdParams;->expressWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getExpressWidth()F
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/api/AdParams;->expressWidth:F

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/api/AdParams;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/api/AdParams;->linkId:Ljava/lang/String;

    return-object v0
.end method

.method public isMixNative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/api/AdParams;->isMixNative:Z

    return v0
.end method
