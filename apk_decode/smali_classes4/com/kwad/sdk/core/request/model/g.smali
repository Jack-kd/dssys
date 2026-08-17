.class public Lcom/kwad/sdk/core/request/model/g;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public aXA:Ljava/lang/String;

.field public aXB:Ljava/lang/String;

.field public aXy:Ljava/lang/String;

.field public aXz:Ljava/lang/String;

.field public serviceToken:Ljava/lang/String;

.field public thirdAge:I

.field public thirdGender:I

.field public thirdInterest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Nw()Lcom/kwad/sdk/core/request/model/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/request/model/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/request/model/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final fi(Ljava/lang/String;)Lcom/kwad/sdk/core/request/model/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/request/model/g;->aXy:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final fj(Ljava/lang/String;)Lcom/kwad/sdk/core/request/model/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/request/model/g;->aXA:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final fk(Ljava/lang/String;)Lcom/kwad/sdk/core/request/model/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/request/model/g;->serviceToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final fl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/request/model/g;->aXB:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
