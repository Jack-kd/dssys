.class public Lcom/kwad/sdk/commercial/h/a;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public aKA:Ljava/lang/String;

.field public aKB:Ljava/lang/String;

.field public aKC:Ljava/lang/String;

.field public aKs:Ljava/lang/String;


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

.method public static Ix()Lcom/kwad/sdk/commercial/h/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/commercial/h/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/commercial/h/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final ck(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/h/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/commercial/c/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final dD(Ljava/lang/String;)Lcom/kwad/sdk/commercial/h/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/commercial/h/a;->aKC:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final dE(Ljava/lang/String;)Lcom/kwad/sdk/commercial/h/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/commercial/h/a;->aKs:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final dF(Ljava/lang/String;)Lcom/kwad/sdk/commercial/h/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/commercial/h/a;->aKA:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final dG(Ljava/lang/String;)Lcom/kwad/sdk/commercial/h/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/commercial/h/a;->aKB:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public synthetic setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/commercial/h/a;->ck(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/h/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
