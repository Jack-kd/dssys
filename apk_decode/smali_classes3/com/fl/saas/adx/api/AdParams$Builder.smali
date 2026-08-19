.class public Lcom/fl/saas/adx/api/AdParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/api/AdParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private expressHeight:F

.field private expressWidth:F

.field private isMixNative:Z

.field private final key:Ljava/lang/String;

.field private linkId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->linkId:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->isMixNative:Z

    iput-object p1, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->key:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/api/AdParams$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/api/AdParams$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->linkId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/api/AdParams$Builder;)F
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->expressWidth:F

    return p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/api/AdParams$Builder;)F
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->expressHeight:F

    return p0
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/api/AdParams$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->isMixNative:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/fl/saas/adx/api/AdParams;
    .locals 2

    new-instance v0, Lcom/fl/saas/adx/api/AdParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fl/saas/adx/api/AdParams;-><init>(Lcom/fl/saas/adx/api/AdParams$Builder;Lcom/fl/saas/adx/api/AdParams$1;)V

    return-object v0
.end method

.method public setExpressHeight(F)Lcom/fl/saas/adx/api/AdParams$Builder;
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->expressHeight:F

    return-object p0
.end method

.method public setExpressWidth(F)Lcom/fl/saas/adx/api/AdParams$Builder;
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->expressWidth:F

    return-object p0
.end method

.method public setIsMixNative(Z)Lcom/fl/saas/adx/api/AdParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->isMixNative:Z

    return-object p0
.end method

.method public setLinkId(Ljava/lang/String;)Lcom/fl/saas/adx/api/AdParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/api/AdParams$Builder;->linkId:Ljava/lang/String;

    return-object p0
.end method
