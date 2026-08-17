.class public Lcom/ubix/ssp/open/nativee/UBiXImage;
.super Ljava/lang/Object;


# instance fields
.field private height:I

.field private materialId:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/open/nativee/UBiXImage;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/open/nativee/UBiXImage;->materialId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/nativee/UBiXImage;->height:I

    return v0
.end method

.method public getMaterialId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/nativee/UBiXImage;->materialId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/nativee/UBiXImage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/nativee/UBiXImage;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/open/nativee/UBiXImage;->height:I

    return-void
.end method

.method public setMaterialId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/nativee/UBiXImage;->materialId:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/nativee/UBiXImage;->url:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/open/nativee/UBiXImage;->width:I

    return-void
.end method
