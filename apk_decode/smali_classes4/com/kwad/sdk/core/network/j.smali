.class public Lcom/kwad/sdk/core/network/j;
.super Lcom/kwad/sdk/core/network/i;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public aTA:I

.field public aTB:J

.field public aTC:J

.field public aTD:J

.field public aTE:J

.field public aTF:J

.field public aTG:J

.field public aTH:J

.field public aTI:J

.field public aTJ:J

.field public aTK:J

.field public aTL:J

.field public aTM:J

.field public aTN:J

.field public aTO:I

.field public aTP:Ljava/lang/String;

.field public aTQ:I

.field public aTR:J

.field public aTS:Ljava/lang/String;

.field public aTT:I

.field public aTU:I

.field public aTV:I

.field public aTW:I

.field public aTx:J

.field public aTy:J

.field public aTz:J

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/i;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTx:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTy:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTz:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTB:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTC:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTD:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTE:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTF:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTG:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTH:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTI:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTJ:J

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTK:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTL:J

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTM:J

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTN:J

    .line 37
    .line 38
    const-string v2, ""

    .line 39
    .line 40
    iput-object v2, p0, Lcom/kwad/sdk/core/network/j;->aTP:Ljava/lang/String;

    .line 41
    .line 42
    iput-wide v0, p0, Lcom/kwad/sdk/core/network/j;->aTR:J

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
