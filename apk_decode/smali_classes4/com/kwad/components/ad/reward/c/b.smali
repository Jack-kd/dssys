.class public Lcom/kwad/components/ad/reward/c/b;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# static fields
.field public static STATUS_NONE:I = 0x2

.field public static vg:I = 0x1

.field public static vh:I = 0x3


# instance fields
.field public vi:I

.field public vj:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    sget v0, Lcom/kwad/components/ad/reward/c/b;->STATUS_NONE:I

    iput v0, p0, Lcom/kwad/components/ad/reward/c/b;->vi:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/kwad/components/ad/reward/c/b;->vi:I

    return-void
.end method


# virtual methods
.method public final ak(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/reward/c/b;->vj:I

    .line 2
    .line 3
    return-void
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/reward/c/b;->vi:I

    .line 2
    .line 3
    return v0
.end method

.method public final ik()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/reward/c/b;->vj:I

    .line 2
    .line 3
    return v0
.end method
