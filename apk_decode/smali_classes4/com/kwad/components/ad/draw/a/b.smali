.class public Lcom/kwad/components/ad/draw/a/b;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public adNum:I

.field public adStyle:I

.field public cP:I

.field public cQ:J

.field public loadTime:J

.field public materialType:I

.field public materialUrl:Ljava/lang/String;

.field public methodName:Ljava/lang/String;

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

.method public static aS()Lcom/kwad/components/ad/draw/a/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/draw/a/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/draw/a/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final D(I)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/draw/a/b;->status:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final E(I)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/draw/a/b;->adNum:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final F(I)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/draw/a/b;->materialType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final G(I)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/draw/a/b;->renderType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final H(I)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/draw/a/b;->cP:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final I(I)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/draw/a/b;->adStyle:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(J)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/ad/draw/a/b;->loadTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(J)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/ad/draw/a/b;->renderTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final j(J)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/ad/draw/a/b;->cQ:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/a/b;->methodName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Lcom/kwad/components/ad/draw/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/a/b;->materialUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
