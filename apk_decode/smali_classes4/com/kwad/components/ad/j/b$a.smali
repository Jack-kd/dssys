.class public Lcom/kwad/components/ad/j/b$a;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public Np:Ljava/lang/String;

.field public Nq:Ljava/lang/String;

.field public Nr:Ljava/lang/String;

.field public Ns:Ljava/lang/String;

.field public Nt:Ljava/lang/String;

.field public Nu:Ljava/lang/String;

.field public Nv:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/commercial/c/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WK()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/kwad/components/ad/j/b$a;->Np:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WM()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/kwad/components/ad/j/b$a;->Nq:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->getOsVersion()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/kwad/components/ad/j/b$a;->Nr:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WS()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/kwad/components/ad/j/b$a;->Ns:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {}, Lcom/kwad/sdk/utils/bf;->getDeviceId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/kwad/components/ad/j/b$a;->Nt:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method
