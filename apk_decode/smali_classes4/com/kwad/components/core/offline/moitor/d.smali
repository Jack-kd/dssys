.class public Lcom/kwad/components/core/offline/moitor/d;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public acX:Ljava/lang/String;

.field public acY:J

.field public acZ:J

.field public adb:Ljava/lang/String;

.field public adc:J


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


# virtual methods
.method public final M(J)Lcom/kwad/components/core/offline/moitor/d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/core/offline/moitor/d;->acY:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final N(J)Lcom/kwad/components/core/offline/moitor/d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/core/offline/moitor/d;->acZ:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final O(J)Lcom/kwad/components/core/offline/moitor/d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/core/offline/moitor/d;->adc:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final aV(Ljava/lang/String;)Lcom/kwad/components/core/offline/moitor/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/offline/moitor/d;->acX:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final aW(Ljava/lang/String;)Lcom/kwad/components/core/offline/moitor/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/commercial/c/a;->errorMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final aX(Ljava/lang/String;)Lcom/kwad/components/core/offline/moitor/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/offline/moitor/d;->adb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bu(I)Lcom/kwad/components/core/offline/moitor/d;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/commercial/c/a;->errorCode:I

    .line 2
    .line 3
    return-object p0
.end method

.method public synthetic setErrorCode(I)Lcom/kwad/sdk/commercial/c/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/offline/moitor/d;->bu(I)Lcom/kwad/components/core/offline/moitor/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
