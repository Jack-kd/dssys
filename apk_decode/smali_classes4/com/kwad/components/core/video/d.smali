.class public final Lcom/kwad/components/core/video/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private anq:Z

.field private anr:Z

.field private ans:Z

.field private ant:Z

.field private anu:Z

.field private anv:I


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
    iput-boolean v0, p0, Lcom/kwad/components/core/video/d;->anq:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/components/core/video/d;->anr:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/kwad/components/core/video/d;->ans:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/kwad/components/core/video/d;->ant:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/kwad/components/core/video/d;->anu:Z

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/kwad/components/core/video/d;->anv:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final bh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/video/d;->ans:Z

    .line 2
    .line 3
    return-void
.end method

.method public final cb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/video/d;->anv:I

    .line 2
    .line 3
    return-void
.end method

.method public final setAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/video/d;->anr:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setFillXY(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/video/d;->anu:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setForce(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/video/d;->anq:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHorizontalVideo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/video/d;->ant:Z

    .line 2
    .line 3
    return-void
.end method

.method public final xA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/video/d;->ans:Z

    .line 2
    .line 3
    return v0
.end method

.method public final xB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/video/d;->ant:Z

    .line 2
    .line 3
    return v0
.end method

.method public final xC()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/video/d;->anu:Z

    .line 2
    .line 3
    return v0
.end method

.method public final xw()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/video/d;->anv:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final xx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/video/d;->anv:I

    .line 2
    .line 3
    return v0
.end method

.method public final xy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/video/d;->anq:Z

    .line 2
    .line 3
    return v0
.end method

.method public final xz()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/video/d;->anr:Z

    .line 2
    .line 3
    return v0
.end method
