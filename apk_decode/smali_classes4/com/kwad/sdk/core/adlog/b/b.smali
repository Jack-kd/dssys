.class public Lcom/kwad/sdk/core/adlog/b/b;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public aKI:I

.field public aLP:I

.field public aLQ:Ljava/lang/String;

.field public aLZ:Z

.field public aMa:I

.field public aMb:I

.field public aMc:J

.field public retryCount:I

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

.method public static Jd()Lcom/kwad/sdk/core/adlog/b/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/b/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/b/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final az(J)Lcom/kwad/sdk/core/adlog/b/b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/sdk/core/adlog/b/b;->aMc:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final bE(Z)Lcom/kwad/sdk/core/adlog/b/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/core/adlog/b/b;->aLZ:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final cD(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/adlog/b/b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final dK(I)Lcom/kwad/sdk/core/adlog/b/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/b/b;->status:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final dL(I)Lcom/kwad/sdk/core/adlog/b/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/b/b;->aKI:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final dM(I)Lcom/kwad/sdk/core/adlog/b/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/b/b;->retryCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final dN(I)Lcom/kwad/sdk/core/adlog/b/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/b/b;->aLP:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final dO(I)Lcom/kwad/sdk/core/adlog/b/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/b/b;->aMa:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final dP(I)Lcom/kwad/sdk/core/adlog/b/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/adlog/b/b;->aMb:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final dY(Ljava/lang/String;)Lcom/kwad/sdk/core/adlog/b/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/adlog/b/b;->aLQ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public synthetic setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/adlog/b/b;->cD(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/adlog/b/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
