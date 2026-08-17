.class public Lcom/kwad/components/ad/c/c/b;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public adNum:I

.field public cP:I

.field public cQ:J

.field public cR:I

.field public loadTime:J

.field public materialType:I

.field public materialUrl:Ljava/lang/String;

.field public renderTime:J

.field public renderType:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/commercial/c/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static av()Lcom/kwad/components/ad/c/c/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/c/c/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/c/c/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final A(I)Lcom/kwad/components/ad/c/c/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/c/c/b;->cR:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(J)Lcom/kwad/components/ad/c/c/b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/ad/c/c/b;->loadTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final f(J)Lcom/kwad/components/ad/c/c/b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/ad/c/c/b;->renderTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(J)Lcom/kwad/components/ad/c/c/b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/ad/c/c/b;->cQ:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final p(Ljava/lang/String;)Lcom/kwad/components/ad/c/c/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/c/b;->materialUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final v(I)Lcom/kwad/components/ad/c/c/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/c/c/b;->status:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final w(I)Lcom/kwad/components/ad/c/c/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/c/c/b;->adNum:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final x(I)Lcom/kwad/components/ad/c/c/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/c/c/b;->materialType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final y(I)Lcom/kwad/components/ad/c/c/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/c/c/b;->renderType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final z(I)Lcom/kwad/components/ad/c/c/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/c/c/b;->cP:I

    .line 2
    .line 3
    return-object p0
.end method
