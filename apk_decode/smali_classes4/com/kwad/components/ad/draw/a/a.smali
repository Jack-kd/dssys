.class public Lcom/kwad/components/ad/draw/a/a;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public callbackType:I

.field public dO:Ljava/lang/String;

.field public renderType:I


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

.method public static aR()Lcom/kwad/components/ad/draw/a/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/draw/a/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/draw/a/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final B(I)Lcom/kwad/components/ad/draw/a/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/draw/a/a;->renderType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final C(I)Lcom/kwad/components/ad/draw/a/a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/draw/a/a;->callbackType:I

    .line 2
    .line 3
    return-object p0
.end method
