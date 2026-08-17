.class public Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/interfaces/AdMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdMaterialData"
.end annotation


# static fields
.field private static emptyData:Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;


# instance fields
.field private advId:I

.field private advVer:Ljava/lang/String;

.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->advId:I

    iput-object p3, p0, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->data:Ljava/lang/String;

    iput-object p2, p0, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->advVer:Ljava/lang/String;

    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;)Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;
    .locals 1

    new-instance v0, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    invoke-direct {v0, p0, p1, p2}, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createEmpty(I)Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->emptyData:Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {p0, v0, v0}, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->create(ILjava/lang/String;Ljava/lang/String;)Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    move-result-object p0

    sput-object p0, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->emptyData:Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    :cond_0
    sget-object p0, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->emptyData:Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    return-object p0
.end method


# virtual methods
.method public getAdvId()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->advId:I

    return v0
.end method

.method public getAdvVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->advVer:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->data:Ljava/lang/String;

    return-object v0
.end method
