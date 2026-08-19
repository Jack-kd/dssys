.class public Lcom/fl/saas/adx/base/bean/CustomLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lat:D

.field private lng:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/fl/saas/adx/base/bean/CustomLocation;->lat:D

    iput-wide p3, p0, Lcom/fl/saas/adx/base/bean/CustomLocation;->lng:D

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    iget-wide v0, p0, Lcom/fl/saas/adx/base/bean/CustomLocation;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    iget-wide v0, p0, Lcom/fl/saas/adx/base/bean/CustomLocation;->lng:D

    return-wide v0
.end method

.method public setLat(D)V
    .locals 0

    iput-wide p1, p0, Lcom/fl/saas/adx/base/bean/CustomLocation;->lat:D

    return-void
.end method

.method public setLng(D)V
    .locals 0

    iput-wide p1, p0, Lcom/fl/saas/adx/base/bean/CustomLocation;->lng:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"lat\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/fl/saas/adx/base/bean/CustomLocation;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",\"lng\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/fl/saas/adx/base/bean/CustomLocation;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
