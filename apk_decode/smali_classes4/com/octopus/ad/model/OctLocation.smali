.class public Lcom/octopus/ad/model/OctLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private latitude:D

.field private longitude:D

.field private time:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDIJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/octopus/ad/model/OctLocation;->longitude:D

    .line 4
    iput-wide p3, p0, Lcom/octopus/ad/model/OctLocation;->latitude:D

    .line 5
    iput p5, p0, Lcom/octopus/ad/model/OctLocation;->type:I

    .line 6
    iput-wide p6, p0, Lcom/octopus/ad/model/OctLocation;->time:J

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/model/OctLocation;->latitude:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/model/OctLocation;->longitude:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/model/OctLocation;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/model/OctLocation;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/model/OctLocation;->latitude:D

    .line 2
    .line 3
    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/model/OctLocation;->longitude:D

    .line 2
    .line 3
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/model/OctLocation;->time:J

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/model/OctLocation;->type:I

    .line 2
    .line 3
    return-void
.end method
