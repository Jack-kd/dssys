.class public final Lcom/kwad/components/core/innerEc/live/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aab:F

.field public aac:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/widget/k;->aab:F

    .line 6
    .line 7
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/widget/k;->aac:F

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final tg()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/k;->aab:F

    .line 2
    .line 3
    return v0
.end method

.method public final th()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/k;->aac:F

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LiveScrollSegment{mTimePercent="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/widget/k;->aab:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mDistancePercent="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/widget/k;->aac:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
