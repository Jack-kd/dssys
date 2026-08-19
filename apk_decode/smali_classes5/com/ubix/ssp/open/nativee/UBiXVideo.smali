.class public Lcom/ubix/ssp/open/nativee/UBiXVideo;
.super Ljava/lang/Object;


# instance fields
.field private coverUrl:Ljava/lang/String;

.field private duration:J

.field private height:I

.field private materialId:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->coverUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->videoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->materialId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->duration:J

    return-void
.end method


# virtual methods
.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->height:I

    return v0
.end method

.method public getMaterialId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->materialId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->width:I

    return v0
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->duration:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->height:I

    return-void
.end method

.method public setMaterialId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->materialId:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/open/nativee/UBiXVideo;->width:I

    return-void
.end method
