.class public Lcom/kwad/components/ad/draw/a/e;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public dP:J

.field public materialType:I

.field public materialUrl:Ljava/lang/String;

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

.method public static aT()Lcom/kwad/components/ad/draw/a/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/draw/a/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/draw/a/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final J(I)Lcom/kwad/components/ad/draw/a/e;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/draw/a/e;->status:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final K(I)Lcom/kwad/components/ad/draw/a/e;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/draw/a/e;->materialType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final k(J)Lcom/kwad/components/ad/draw/a/e;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/ad/draw/a/e;->dP:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lcom/kwad/components/ad/draw/a/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/a/e;->materialUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
