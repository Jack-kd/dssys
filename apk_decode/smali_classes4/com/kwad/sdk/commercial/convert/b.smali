.class public Lcom/kwad/sdk/commercial/convert/b;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public aKo:Z

.field public aKp:Z

.field public aKq:Ljava/lang/String;

.field public adNum:I

.field public adSource:Ljava/lang/String;

.field public methodName:Ljava/lang/String;


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

.method public static Iq()Lcom/kwad/sdk/commercial/convert/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/commercial/convert/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/commercial/convert/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final bC(Z)Lcom/kwad/sdk/commercial/convert/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/commercial/convert/b;->aKo:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final dA(I)Lcom/kwad/sdk/commercial/convert/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/commercial/convert/b;->adNum:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final dt(Ljava/lang/String;)Lcom/kwad/sdk/commercial/convert/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/commercial/convert/b;->methodName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final du(Ljava/lang/String;)Lcom/kwad/sdk/commercial/convert/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/commercial/convert/b;->aKq:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final dv(Ljava/lang/String;)Lcom/kwad/sdk/commercial/convert/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/commercial/convert/b;->adSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
