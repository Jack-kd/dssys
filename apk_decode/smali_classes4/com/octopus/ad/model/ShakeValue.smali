.class public Lcom/octopus/ad/model/ShakeValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acceleration:D

.field private angle:D

.field private time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/octopus/ad/model/ShakeValue;->acceleration:D

    .line 4
    iput-wide p3, p0, Lcom/octopus/ad/model/ShakeValue;->angle:D

    .line 5
    iput p5, p0, Lcom/octopus/ad/model/ShakeValue;->time:I

    return-void
.end method


# virtual methods
.method public getAcceleration()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/model/ShakeValue;->acceleration:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAngle()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/model/ShakeValue;->angle:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/model/ShakeValue;->time:I

    .line 2
    .line 3
    return v0
.end method

.method public setAcceleration(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/model/ShakeValue;->acceleration:D

    .line 2
    .line 3
    return-void
.end method

.method public setAngle(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/octopus/ad/model/ShakeValue;->angle:D

    .line 2
    .line 3
    return-void
.end method

.method public setTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/model/ShakeValue;->time:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ShakeValue{acceleration="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/octopus/ad/model/ShakeValue;->acceleration:D

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", angle="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/octopus/ad/model/ShakeValue;->angle:D

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", time="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/octopus/ad/model/ShakeValue;->time:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x7d

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
