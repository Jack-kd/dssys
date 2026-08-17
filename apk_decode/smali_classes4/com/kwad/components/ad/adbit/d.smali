.class public Lcom/kwad/components/ad/adbit/d;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public bG:I

.field public bH:J

.field public bI:Ljava/lang/String;

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

.method public static R()Lcom/kwad/components/ad/adbit/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/components/ad/adbit/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/adbit/d;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lcom/kwad/components/ad/adbit/d;->status:I

    .line 8
    .line 9
    return-object v0
.end method

.method public static S()Lcom/kwad/components/ad/adbit/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/components/ad/adbit/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/adbit/d;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iput v1, v0, Lcom/kwad/components/ad/adbit/d;->status:I

    .line 8
    .line 9
    return-object v0
.end method
